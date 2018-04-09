# geometry module
def geometry():
    print(f"Well, {g_start.name}, choose a number please: ", end=' ')

    while True:
        number = input('>> ')
        try:
            number = int(room_choice)
        except:
            print("So stupid, can't type a number?")
            continue

    import math
    cirqle_area = math.py * number * number

    print(f"What area cirqle have if radius is {number}?")

    while True:
        answer = input('>> ')
        try:
            anser_int = int(room_choice)
        except:
            print("So stupid, can't type a number?")
            continue

    if answer_int == cirqle_area:
        print("Not bad. Go on!")
    else:
        print("Wrong. Please try harder.")
