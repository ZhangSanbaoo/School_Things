# def bubbleSort(array):
#     isSorted = True
#     while isSorted == True :
#         isSorted = True
#         count = 0
#         for count in range(len(array)-1) :
#             if array[count] > array[count+1]:
#                 a = array[count]
#                 array[count] = array[count+1]
#                 array[count+1] = a
#                 isSorted = False
#     pass


def bubbleSort(array):
    isSorted = True
    while isSorted:
        isSorted = True
        for i in range(len(array)-1):
            if array[i] > array[i+1]:
                array[i], array[i+1] = array[i+1], array[i]
                isSorted = False
        return array
array = [6,4,9,12,1]

bubbleSort(array)
print(array)

a = 12
b = 54
