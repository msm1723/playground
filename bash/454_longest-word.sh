#!/usr/bin/env bash

## 454_longest-word.sh
## longest-word: find longest string in a file

while [[ -n $1 ]]; do # while positional param is not empty do
	if [[ -r $1 ]]; then # if positional param contains readable file
		max_word= # declarate var with empty value
		max_len=0 # declarate var with 0 value
		for i in $(strings $1); do # for each string taken from file with strings command do
			len=$(echo -n $i | wc -c) # echo -n to supress trailing newline character | count each character and assign result to len variable
			if (( len > max_len )); then # if len bigger then max_len
				max_len=$len # assign len to max_len
				max_word=$i # and assign string to max_word
			fi
		done
		echo "$1: '$max_word' ($max_len characters)"
	fi
	shift # shift to next positional param
done
