# import matplotlib
# # matplotlib.use('Qt5Agg')
# matplotlib.use('TkAgg')
# print(matplotlib.get_backend())

# import matplotlib.pyplot as plt
# # import tkinter

# # import pandas as pd
# # import numpy as np

# # from numpy import *
# # matplotlib.use('Qt5Agg')

# def main():
#     x = []
#     y = []
#     for i in range(-100, 100):
#         x.append(i)
#         y.append(i*i)
#     plt.plot(x, y)
#     plt.show()
# main()

import random

count1 = 0
count2 = 0
count3 = 0
count4 = 0

while True:
    a = random.randint(1,4)
    if a == 1:
        count1+=1
    if a == 2:
        count2+=1
    if a == 3:
        count3+=1
    if a == 4:
        count4+=1
    if count1 >= 5:
        print('1')
        break
    if count2 >= 5:
        print('2')
        break
    if count3 >= 5:
        print('3')
        break
    if count4 >= 5:
        print('4')
        break