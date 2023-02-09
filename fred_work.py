#Initialization
number = 0
number1 = 2
number2 = 3.56789
number3 = 5
message = '?o^sl'
#Print numbers
print("Number with 0 prefix : {:0>2d}\nFloat number rounded {:.2f}".format(number1, number2))
print("{} // {} = {} remains {}".format(number1, number3, number1//number3, number1%number3))
print("{} / {} = {} ".format(number1, number3, number1/number3))

#Some maths
sum=0
n=6
for i in range(n+1):
    sum += i
print("Sum of {} first positive integers = {}".format(n,sum))

#Elevator
while i == number3 or i >= 2:
    i -= 1
    print('Still {} level(s) before ground level...'.format(i))


#Cesar
for letter in message:
    print(chr(ord(letter)+3),end='') #Hint : https://docs.python.org/3/library/functions.html#ord


