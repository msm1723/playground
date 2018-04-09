import random
from urllib.request import urlopen
import sys

WORD_URL = "http://learncodethehardway.org/words.txt"
# Define empty list variable
WORDS = []

# Variable that contains dictionary
PHRASES = {
    "class %%%(%%%):":
     "Make a class named %%% that is-a %%%.",
     "class %%%(object):\n\tdef __init__(self, ***)" :
     "class %%% has-a __init__ that takes self and *** params.",
     "class %%%(object):\n\tdef ***(self, @@@)":
     "class %%% has-a function *** that takes self and @@@ params.",
     "*** = %%%()":
     "Set *** to an instance of class %%%.",
     "***.***(@@@)":
     "From *** get the *** function, call it with params self, @@@.",
     "***.*** = '***'":
     "From *** get the *** attribute and set it to '***'."
}

# do they want to drill phrases first
# check position arguments (first is script name, second will compare against "english"
if len(sys.argv) == 2 and sys.argv[1] == "english":
    PHRASE_FIRST = True
else:
    PHRASE_FIRST = False

# load up the words from the website
for word in urlopen(WORD_URL).readlines():
    # append to WORDS all words from url with stripped whitespaces
    WORDS.append(str(word.strip(), encoding="utf-8"))

# function gets SNIPPET and PHRASE selected below
def convert(snippet, phrase):
    #set class_names var to returned list which contains  randomly selected elements chosen from WORDS equal to "%%%" quantitity in snippet
    class_names = [w.capitalize() for w in
        random.sample(WORDS, snippet.count("%%%"))]
    print("!select class_names: ",class_names)
    #same
    other_names = random.sample(WORDS, snippet.count("***"))
    print("!select other_names: ",other_names)
    results = []
    param_names = []

# from 0 to count of "@@@" elements PARAM_COUNT randomly set to 1-3 (random params number in quesiton) and append random elements from WORDS x PARAM_COUNT to PARAM_NAMES
    for i in range(0, snippet.count("@@@")):
        param_count = random.randint(1,3)
        param_names.append(', '.join(
        random.sample(WORDS, param_count)))
        print("!select namber and param_names: ",param_names)

    for sentence in snippet, phrase:
        result = sentence[:]
        print("!sentence in snippet, phrase: result = [:]")
        # fake class names (replace first element with word)
        for word in class_names:
            result = result.replace("%%%", word, 1)
        print("!replace class_names in result: ",result)
        # fake other names (replace first element with word)
        for word in other_names:
            result = result.replace("***", word, 1)
        print("!replace other_names in result: ",result)
        # fake parameter lists (replace first element with word)
        for word in param_names:
            result = result.replace("@@@", word, 1)
        print("!replace param in result: ",result)
        results.append(result)
        print("!print results: ",results)
    return results


# keep going until they hit CTRL-D
try:
    while True:
        # get all keys from PHRASES dictionary as SNIPPETS list
        snippets = list(PHRASES.keys())
        # rundomly sort SNIPPETS list
        random.shuffle(snippets)

        for snippet in snippets:
            # for each SNIPPET (key) get its PHRASE (value) from PHRASES list
            phrase = PHRASES[snippet]
            # generate question and answer using convert function
            print("!randomly select question: ",snippet,"\n\t", phrase)
            question, answer = convert(snippet, phrase)
            if PHRASE_FIRST:
                question, answer = answer, question

            print(question)

            input("> ")
            print(f"ANSWER: {answer}\n\n")
# if exception CTRL-D caught
except EOFError:
    print("\nBye")
