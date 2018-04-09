# this identical
def curry2(f):
    def g(x):
        def h(y):
            return f(x, y)
        return h
    return g

# to this
curry2 = lambda f: lambda x: lambda y: f(x, y)
