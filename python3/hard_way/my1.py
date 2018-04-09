print("Hello, human!")
name = input("What is your name?\n> ")
letters = list(name)

def reversed_print(text):
    print(f"{name}, now I print your name backwords.")
    print("Here we go:", end=' ')
    for i in reversed(letters):
        print(i, end='')

reversed_print(letters)
