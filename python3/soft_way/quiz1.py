# Q1.

def triangular(x, y, z):
    """Return whether x, y, and z are triangular.

    >>> triangular(3, 4, 5)
    True
    >>> triangular(3, 14, 5) # 14 is greater than 3 + 5
    False
    >>> triangular(7.5, 3.5, 4) # 7.5 is equal to 3.5 + 4
    False
    >>> result = triangular(5, 4, 3) # Return, don't print
    >>> result
    True
    """
    "*** YOUR CODE HERE ***"
    lines = sorted([x, y, z])
    if lines[0]+lines[1] <= lines[2]:
        return False
    else:
        return True

# Q2.

def next_square(x):
    """Return the smallest perfect square greater than x.

    >>> next_square(10)
    16
    >>> next_square(39)
    49
    >>> next_square(100)
    121
    >>> result = next_square(2) # Return, don't print
    >>> result
    4
    """
    "*** YOUR CODE HERE ***"
    from math import sqrt
    i = x
    while True:
        i += 1
        sroot = sqrt(i)
        if (sroot).is_integer():
            break
        else:
            continue
    return i

# Q3.

def digit_span(x):
    """Return the difference between x's largest and smallest digits.

    >>> digit_span(2013) # 3 - 0 = 3
    3
    >>> digit_span(75) # 7 - 5 = 2
    2
    >>> digit_span(2345678765432) # 8 - 2 = 6
    6
    >>> result = digit_span(6473465) # Return, don't print
    >>> result
    4
    """
    "*** YOUR CODE HERE ***"
    list_of_ints = sorted([int(i) for i in str(x)])
    return list_of_ints[-1] - list_of_ints[0]
