numbers = []

def loopfunc(number):
    for i in range(0, number):
        print(f"At the beginning i is {i}")
        numbers.append(i)

        print("numbers now: ", numbers)
        print(f"At the bottom i is {i}")
        print("loop again")

number = int(input("how many loops? "))

loopfunc(number)

print("The numbers: ")
for num in numbers:
    print(num)
