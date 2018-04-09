# introduction
def intro():
    score = []
    print("Hello, mortal, wats your name?")
    username = input('>> ')
    return menu(username, score)

# menu
def menu(username, score):
    if not score:
        print(f"So {username} you enterint in to the stupid check facility.")
        print("You need to succede in all 5 rooms to prove you are not stupid.")
        print("So select room number you'd like to begin with:")
    elif len(score) == 5:
        print("You complete all 5 rooms: {score}. You win you are the best.")
    else:
        print(f"Well hello again, {username}.")
        print(f"Your succeded in this rooms: {score}.")
        print("Please select next room!")

    print("1 Geometry")
    print("2 History")
    print("3 Astronomy")
    print("4 Phylosophy")
    print("5 Poetry")

    while True:
        keyboard = input('>> ')
        try:
            room_number = int(keyboard)
        except:
            print("So stupid, can't type a number?")
            continue
        if room_number == 0:
            love()
        elif room_number not in range(1, 5):
            print("Number between 1 and 5, genious!")
            continue
        elif room_number == 1:
            geometry(username, score)
        elif room_number == 2:
            history(username, score)
        elif room_number == 3:
            astronomy(username, score)
        elif room_number == 4:
            phylosophy(username, score)
        elif room_number == 5:
            poetry(username, score)

# geometry room
def geometry(username, score):
    room = 'geometry'
    if room not in score:
        print(f"Well, {username}, choose a number please: ", end=' ')

        while True:
            keyboard = input('>> ')
            try:
                radius = int(keyboard)
                break
            except:
                print("So stupid, can't type a number?")
                continue

        import math
        cirqle_area = math.pi * radius * radius
        pain = "%.2f" % cirqle_area
        print(type(pain), pain)

        while True:
            print(f"What area cirqle have if radius is {radius}?")
            answer = input('>> ')

            if answer == pain:
                print("Not bad. Go on!")
                score.append(room)
                break
            else:
                print("Wrong. Please try harder.")
                continue

        return menu(username, score)

    else:
        print("Room already done!")
        return menu(username, score)

# history room
def history (username, score):
    room = 'history'
    Q1 = [1, "A true personal name, chosen by a child's parents"]
    A1 = [1, "Praenomen"]
    Q2 = [2, 'Designated a Roman citizen as a member of a gens, which may be translated as "race", "family", or "clan".']
    A2 = [2, "Nomen"]
    Q3 = [3, "The third element of the tria nomina, began as an additional personal name."]
    A3 = [3, "Cognomen"]
    all_names = [Q1, Q2, Q3]
    all_answers = [A1, A2, A3]

    if room not in score:
        print(f"Well, {username}, please read Roman name definition: ")
        import random
        question = random.choice(all_names)
        print(question[1])

        while True:
            print("What name is it?")
            print("1", all_answers[0][1])
            print("2", all_answers[1][1])
            print("3", all_answers[2][1])

            while True:
                keyboard = input('>> ')
                try:
                    answer = int(keyboard)
                    break
                except:
                    print("So stupid, can't type a number?")
                    continue

            if answer == question[0]:
                print("Not bad. Go on!")
                score.append(room)
                break
            else:
                print("Wrong. Please try harder.")
                continue

        return menu(username, score)

    else:
        print("Room already done!")
        return menu(username, score)

intro()
