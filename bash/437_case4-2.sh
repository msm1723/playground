#!/usr/bin/env bash

## 437_case4-2.sh
## case4-2: test a character

read -n 1 -p "Type a character > " # read waits only one keystroke
echo
case $REPLY in
	[[:upper:]]) echo "'$REPLY' is upper case." ;;& # will be executed command for every possitive test
	[[:lower:]]) echo "'$REPLY' is lower case." ;;&
	[[:alpha:]]) echo "'$REPLY' is alphabetic." ;;&
	[[:digit:]]) echo "'$REPLY' is a digit." ;;&
	[[:graph:]]) echo "'$REPLY' is a visible character." ;;&
	[[:punct:]]) echo "'$REPLY' is a punctuation symbol." ;;&
	[[:space:]]) echo "'$REPLY' is a whitespace character." ;;&
	[[:xdigit:]]) echo "'$REPLY' is a hexadecimal digit." ;;&
esac
