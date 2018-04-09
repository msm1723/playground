def cascade(n):
    """Print a cascade of the prefixes of N

    >>> cascade(4321)
    4321
    432
    43
    4
    43
    432
    4321
    >>> cascade(5)
    5
    """
    if n < 10:
        print(n)
    else:
        print(n)
        cascade(n // 10)
        print(n)

def cascade2(n):
    print(n)
    if n >=10:
        cascade(n//10)
        print(n)


cascade(987654321)

cascade2(987654321)
