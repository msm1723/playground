from sys import argv

def fib(n):
    """Compute the nth Fibonacci number, for n >= 2."""
    predecessor, current = 0, 1   # First two Fibonacci numbers: 1 and 2
    k = 2               # Which Fib number is called current?
    while k < n:
        predecessor, current = current, predecessor + current # This compute both variables befor binding it to it's names!!!
        k = k + 1
        print ("predecessor: ", predecessor, "current: ", current, "k: ", k)
    return current

script, n = argv

result = fib(int(n))

print ("And the answer is:", result)
