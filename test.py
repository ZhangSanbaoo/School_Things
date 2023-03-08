import matplotlib
# matplotlib.use('Qt5Agg')
matplotlib.use('TkAgg')
print(matplotlib.get_backend())

import matplotlib.pyplot as plt
# # import tkinter

# # import pandas as pd
# # import numpy as np

# # from numpy import *
# # matplotlib.use('Qt5Agg')

def main():
    x = []
    y = []
    for i in range(-100, 100):
        x.append(i)
        y.append(i*i)
    plt.plot(x, y)
    plt.show()
main()