def split(n):
    return n // 10, n % 10

def sum_digits(n):
# base case checks if last requeired call done
    if n < 10:
        return n
    else:
        all_but_last, last = split(n)
        return sum_digits(all_but_last) + last
