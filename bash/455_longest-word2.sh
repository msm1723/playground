#!/usr/bin/env bash

## 455_longest-word2.sh
## longest-word2: find longest string in a file

DELAY=3
for i; do #for by default will process all positional params
	if [[ -r $i ]]; then # if positional param is readable file
		max_word=
		max_len=0
		for j in $(strings $i); do # i is used for positional params so for strings it will be j
			len=$(echo -n $j | wc -c) # echo print nothing because overall expansion turns to a number and it's assigned to len var
			echo $j
			if (( len > max_len )); then
				max_len=$len
				max_word=$j
			fi
		done
		echo "$i: '$max_word' ($max_len characters)"
		sleep $DELAY
	fi
done
