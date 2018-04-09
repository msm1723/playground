# variable conteins string with possitions to be formated
formatter = "{} {} {} {}"

# put numbers to possitions
print(formatter.format(1, 2, 3, 4))
# put words to possitions
print(formatter.format("one", "two", "three", "four"))
# put boolean to possitions
print(formatter.format(True, False, False, True))
# put string from formatter in to possitions of formatter
print(formatter.format(formatter, formatter, formatter, formatter))

print(formatter.format(
    "Try your",
    "Own text here",
    "Maybe a poem",
    "Or a song about fear"
))
