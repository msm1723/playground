#!/usr/bin/env bash

## 408_read-validate.sh
## read-validate: validate inpu
## <<< - here stringt

# function
invalid_input () {
    echo "Invalid input '$REPLY'" >&2
    exit 1
}

# read with prompt
read -p "Enter a single item > "

# input is empty (invalid)
[ -z "$REPLY" ] && echo "empty string" && invalid_input # if string in $REPLY is zero - echo and run function

# input is multiple items (invalid)
[ $(echo "$REPLY" | wc -w) -gt 1 ] && echo "multiple words" && invalid_input # count words in $REPLY if its more then 1 - echo and run function

# is input a valid filename?
if echo $REPLY | grep -E "^[-[:alnum:]\._]+$"; then # if $REPLY consists from (minuses) nambers letters dots and (underscores)
    echo "'$REPLY' is a valid filename."
if [ -e $REPLY ]; then # if file with $REPLY name exists then
    echo "And file '$REPLY' exists."
else
    echo "However, file '$REPLY' does not exist."
fi

# is input a floating point number?
if grep -E "^-?[[:digit:]]*\.[[:digit:]]+$" <<< $REPLY; then # if file starts (or not) with minus and consists from zero or any digits before dot and at least one digit or more after
    echo "'$REPLY' is a floating point number."
else
    echo "'$REPLY' is not a floating point number."
fi

# is input an integer?
if echo $REPLY | grep -E "^-?[[:digit:]]+$"; then # if file starts (or not) with minus and consists from at least one number
    echo "'$REPLY' is an integer."
else
    echo "'$REPLY' is not an integer."
fi

else
    echo "The string '$REPLY' is not a valid filename."
fi
