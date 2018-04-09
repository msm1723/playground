def square_root_update(x, a):
    return (x + a/x) / 2

def cube_root_update(x, a,):
    return (2*x + a/(x*x))/3

# this function defined in close to find out if different between candidate X is close to A
def approx_eq(x, a, tolerance=1e-15):
    return abs(x-a) < tolerance

# this function being called uses GUESS as iterator to find X which we are looking for
def improve(update, close, guess=1, max_update=100):
    k = 0
    while not close(guess) and k < max_update:
        guess = update(guess)
        k = k + 1
    return guess

# this two functions obtain number A which root we are looking for.
# and defines functions which gonna be used to find and check result by putting number A in to it.
# also it returns (in we can say call) function improve and give defined functions in to it as params.
def square_root(a):
    def update(x):
        return square_root_update(x, a)
    def close(x):
        return approx_eq(x*x, a)
    return improve(update, close)

def cube_root(a):
    return improve(lambda x: cube_root_update(x, a),
                   lambda x: approx_eq(x*x*x, a))

square_root(4)
cube_root(9)
