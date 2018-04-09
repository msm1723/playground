import urllib
def read_text():
    file = open("/Users/sergey.mazurov/playground/python/text.txt")
    content = file.read()
    print(content)
    file.close()
    check_profanity(content)

def check_profanity(text_to_check):
    connection = urllib.urlopen("http://www.wdylike.appspot.com/?q="+text_to_check)
    output = connection.read()
    print(output)
    connection.close()
    if "true" in output:
        print("Profanity Alert!!")
    elif "false" in output:
        print("this document is ok.")
    else:
        print("Couldn't read document.")
read_text()
