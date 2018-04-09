"""Create now function here."""

from operator import floordiv, mod

def devide_exact(n, d=10):
    """Return the quotient and reminder of deviding N by D.
    And here some doctest:
    >>> q, r = devide_exact(2013, 10)
    >>> q
    201
    >>> r
    2
    """
    return floordiv(n, d), mod(n, d)
