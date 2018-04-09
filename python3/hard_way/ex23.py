import sys
script, file_name, input_encoding, error = sys.argv


def main(working_file, encoding, errors):
    line = language_file.readline()

    if line:
        print_line(line, encoding, errors)
        return main(language_file, encoding, errors)


def print_line(line, encoding, errors):
    next_lang = line.strip() # strip() removes \n
    raw_bytes = next_lang.encode(encoding, errors=errors) # encode() makes bites from words
    cooked_string = raw_bytes.decode(encoding, errors=errors) # decode() makes words from bites

    print(raw_bytes, "<===>", cooked_string)


file_n = open(file_name, encoding="utf-8")

main(file_n, input_encoding, error)
