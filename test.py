import matplotlib
print(matplotlib.get_backend())
import matplotlib.pyplot as plt


def main():
    x = []
    y = []
    for i in range(-100, 100):
        x.append(i)
        y.append(i*i)
    plt.plot(x, y)
    plt.show()
main()