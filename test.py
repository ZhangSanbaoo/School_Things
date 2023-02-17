import sys
import math

n = int(input())
try:
    a = input().split()
    if a == []:
        t = 0
    if len(a) == 1:
        t = a[0]
    else:
        for i in range(0, len(a)-1):
            if abs(int(a[i])) == abs(int(a[i+1])):
                if a[i] > a[i+1]:
                    t = a[i]
                    a[i], a[i+1] = a[i+1], a[i]
                else:
                    t = a[i]
                    continue
            elif abs(int(a[i])) < abs(int(a[i+1])):
                t = a[i]
                a[i], a[i+1] = a[i+1], a[i]
    print(t)

except EOFError:
    t = 0
    print(t)
