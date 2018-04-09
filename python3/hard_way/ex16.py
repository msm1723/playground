from sys import argv

script, filename = argv

print("Opening the file...")
fileobject = open(filename, 'r+')

print("Here is file content:")
print(fileobject.read())

print(f"We're going to erase {filename}.")
print("If you don't wand that, hit CTR-C (^C).")
print("If you do want that, hit RETURN.")

input("?")

print(f"Truncating the file {filename}. Goodbye!")
fileobject.truncate(0)

print("Now I'm going to ask you for three lines.:")
line1 = input("line 1: ")
line2 = input("line 2: ")
line3 = input("line 3: ")

all_lines = line1 + "\n" + line2 + "\n" + line3 + "\n"

print("I'm going to write these to the file.")

fileobject.write(all_lines)
#target.write("\n")
#target.write(line2)
#target.write("\n")
#target.write(line3)
#target.write("\n")

print("And finally, we close it.")
fileobject.close()
