from sys import argv

script, arg = argv
arg = int(arg)

def average(x, y):
    return (x + y)/2

# 2 sqrt_update and sqrt_close gaven as environment here
def improve(update, close, guess=1):
    """3 while function sqrt_close not returns true execute sqrt_update function and assign lalue to guess variable againe"""
    while not close(guess):
        guess = update(guess)
    return print(guess)

def approx_eq(x, y, tolerance=1e-3):
    return abs(x - y) < tolerance

# 1 call: sqrt with argv argument. it defince two functions: average and approx_eq and callse improve function
def sqrt(a):
        def sqrt_update(x):
            """This function returns result of average function whiere a is already difind and x is guess"""
            return average(x, a/x)
        def sqrt_close(x):
            """Return True only when x cube arpximatly equal to a"""
            return approx_eq(x * x, a)
        return improve(sqrt_update, sqrt_close)

sqrt(arg)
