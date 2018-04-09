def cube(x):
    return pow(x, 3)

def identity(x):
    return x

def pi_term(x):
    return 8 / ((4*x-3) * (4*x-1))


# this functions uses summation function
def sum_cubes(n):
    """Sum the first N cubes of natural numbers.

    >>> sum_cubes(5)
    225
    """
    return summation(n, cube)

def sum_naturals(n):
    """ Sum the first N nutural numbers.

    >>> sum_naturals(5)
    15
    """
    return summation(n, identity)

def sum_pi(n):
    return summation(n, pi_term)


# which uses cube, identity and pi_term functions
def summation(n, term):
    """ This function summs N items of  whatever cube, identinty, pi_term term-function returns."""
    total, k = 0, 1
    while k <= n:
        total, k = total + term(k), k + 1
    return total

print(sum_naturals(5))

print(sum_cubes(5))

print(sum_pi(50))
