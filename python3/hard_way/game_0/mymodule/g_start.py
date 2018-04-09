# main
from .g_geometry import *

print("Hello, mortal, wats your name?")
name = input('>> ')

def menu():
    print(f"So {name} you enterint in to the stupid check facility.")
    print("You need to get success in all rooms to prove you are not stupid.")
    print("So select room number you'd like to begin with:")
    print("1 Geometry")
    print("2 History")
    print("3 Astronomy")
    print("4 Phylosophy")
    print("5 Poetry")

    while True:
        room_choice = input('> ')
        try:
            room_number = int(room_choice)
        except:
            print("So stupid, can't type a number?")
            continue
        if room_number == 0:
            love()
        elif room_number not in range(1, 5):
            print("Number between 1 and 5, genious!")
            continue
        elif room_number == 1:
            geometry()
        elif room_number == 2:
            history()
        elif room_number == 3:
            astronomy()
        elif room_number == 4:
            phylosophy()
        elif room_number == 5:
            poetry()

menu()
