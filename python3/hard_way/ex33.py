numbers = []

def loopfunc(number, increment):
    i = 0
    while i < number:
        print(f"At the top i is {i}")
        numbers.append(i)

        i = i + increment
        print("numbers now: ", numbers)
        print(f"At the bottom i is {i}")
        print("loop again")
#   return(numbers)

number = int(input("how many loops? "))
increment = int(input("increment rate? "))

loopfunc(number, increment)

print("The numbers: ")
for num in numbers:
    print(num)
