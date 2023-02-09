l = [3,4,5,2,1]
def secondMin(l):
    min = None
    smin = None
    if l[0] != None:
            min = i
            smin = i
    for i in l :
        if min < i and smin < i:
            smin = min
            min = i
        elif smin < i:
            smin = i
    return smin
