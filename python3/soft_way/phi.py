def improve(golden_update, square_close_to_successor, guess=1):
    i = 0
    while not square_close_to_successor(guess):
        guess = golden_update(guess)
        i += 1
        print(guess)
    return print(guess, i)

def golden_update(guess):
    return 1/guess + 1

def square_close_to_successor(guess):
    return approx_eq(guess * guess, guess + 1)

def approx_eq(x, y, tolerance=1e-3):
    return abs(x - y) < tolerance

phi = improve(golden_update, square_close_to_successor)
