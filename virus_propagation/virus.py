"""
This script simulates virus propagation in a fixed size grid.


"""
import argparse
import logging as log


# Infection function
def infect(crowd_strength, row, col, virus_strength):
    """This function fills up the infection grid by recursive propagation.
       If virus_strength is greated than the immunity strength at a given 
       position, that position gets infected.
       Propagation is then recursively computed to the 8 neighbors of the 
       current gird position.

    Args:
        crowd_strength (list[list]): immunity strengh of each individual 
                                     in the grid
        row (int): initial virus position (row)
        col (int): initial virus position (column)
        virus_strength (int): inffectious strengh of virus 
    """
    global infected
    log.debug(f"Trying to infect {row} {col} ... ")
    if infected[row][col] == -1:
        log.debug(f"{row} {col} already infected")
        return
    if virus_strength < crowd_strength[row][col]:
        log.debug(f" {row} {col} infection failed")
        return
    else:
        # Infection
        infected[row][col] = -1
        log.debug(f" {row} {col} infected !")
        # Propagation (recursive)
        if row > 0:
            infect(crowd_strength, row-1, col, virus_strength)
        if row < n_rows-1:
            infect(crowd_strength, row+1, col, virus_strength)
        if col > 0:
            infect(crowd_strength, row, col-1, virus_strength)
            if row > 0:
                infect(crowd_strength, row-1, col-1, virus_strength)
            if row < n_rows-1:
                infect(crowd_strength, row+1, col-1, virus_strength)
        if col < n_cols-1:
            infect(crowd_strength, row, col+1, virus_strength)
            if row > 0:
                infect(crowd_strength, row-1, col+1, virus_strength)
            if row < n_rows-1:
                infect(crowd_strength, row+1, col+1, virus_strength)


def parse_simulation_parameters(content):
    """Parse content of simulation parameters file into individual variables"""
    # Code below aims at helping you parse
    # the input according to the problem statement.
    content = [line.strip('n').split() for line in content]
    # the width and height of the crowd
    n_rows, n_cols = map(int, content[0])
    # the strength of the people in the crowd
    crowd_strength = [list(map(int, line)) for line in content[1:n_rows+1]]
    # the position of the virus
    v_pos_row, v_pos_col = map(int, content[-2])
    # the strength of the virus
    virus_strength = int(content[-1][0])
    return crowd_strength, n_rows, n_cols, v_pos_row, v_pos_col, virus_strength


def format_grid(grid):
    """format grid as a matrix for printing"""
    out = ""
    for row in grid:
        for col_elem in row:
            out += "{:2} ".format(col_elem)
        out += "\n"
    # return all but last char to avoid double linebreak
    return out[:-1]


def save_infection_results(infected, filename):
    """Save result of simulation (infected grid) to filename"""

    # Prepare output file content
    output = format_grid(infected)

    # Save output to file
    with open(filename, 'w') as f:
        f.write(output)


def intialize_infection_grid(n_rows, n_cols):
    """Infection grid initialization"""
    infected = []
    for lin in range(n_rows):
        infected.append([])
        for col in range(n_cols):
            infected[lin].append(0)
    # Note: you can produce the same array by running this one-liner:
    # infected = [[0] * nbcol] * nbline
    return infected


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        prog='virus.py',
        description='Simulation of a virus propagation given some parameters')
    parser.add_argument("-i", "--input", default='input.txt',
                        help="Path to the input file containing simulation parameters")
    parser.add_argument("-o", "--output", default="output.txt",
                        help="Path to the output file where the simulation result is stored")

    parser.add_argument(
        '-log',
        default='warning',
        choices=[l.lower() for l in log._nameToLevel.keys()],
        help='Provide logging level, e.g.,-log debug. Defaults to warning' )

    args = parser.parse_args()


    # set logging level according to command line arg
    # Needs to be UPPERCASED before passing it to python's logging
    log.basicConfig(level=args.log.upper())

    # Read simulation parameters from input.txt
    with open(args.input, 'r') as f:
        content = f.readlines()

    # Parse simulation parameters
    crowd_strength, n_rows, n_cols, v_pos_row, v_pos_col, virus_strength = \
        parse_simulation_parameters(content)

    # Print crowd strenght as read from file
    log.info("Crowd strenght grid\n"+format_grid(crowd_strength))

    log.info(f"A virus with strength {virus_strength} "\
             f"hit on (row:{v_pos_row},col:{v_pos_col})")

    # Infection grid initialization
    infected = intialize_infection_grid(n_rows, n_cols)

    # Apply infection process with parameters read from input
    infect(crowd_strength, v_pos_row, v_pos_col, virus_strength)
    # Mark initial virus position with -2
    infected[v_pos_row][v_pos_col] = -2

    print(format_grid(infected))

    save_infection_results(infected, args.output)
