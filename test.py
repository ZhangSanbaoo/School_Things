defibrillateurs = []
for i in range(n):
    defib = input().split(';')
    defib_lon = float(defib[4].replace(',', '.'))
    defib_lat = float(defib[5].replace(',', '.'))
    # defibrillateurs is list that contains n lists, each one of them contains the name, and the long and lat for every defibrillateur
    defibrillateurs.append(
        {'name': defib[1], 'londefib': defib_lon, 'latdefib': defib_lat})

# distance is a function to calculate the distance between two points


def distance(lat1, lon1, lat2, lon2):
    r = 6371  # rayon de la terre
    d_lon = (lon2-lon1)*math.cos((lat1+lat2)/2)
    d_lat = lat2-lat1
    d = math.sqrt(d_lat**2+d_lon**2)*r
    return (d)


closest_defib = defibrillateurs[0]
closest_distance = distance(
    lat, lon, closest_defib['latdefib'], closest_defib['londefib'])
for defib in defibrillateurs:
    dist = distance(lat, lon, defib['latdefib'], defib['londefib'])
    if dist < closest_distance:
        closest_defib = defib
        closest_distance = dist


# Write an answer using print
# To debug: print("Debug messages...", file=sys.stderr, flush=True)


print(closest_defib['name'])
