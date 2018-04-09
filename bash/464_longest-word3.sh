#!/usr/bin/env bash

## 464_longest-word3.sh
## longest-word3: find longest string in a file

DELAY=3
for i; do # by default for will iterate through positional params
	if [[ -r $i ]]; then # if positional param contains readable file path
		max_word=
		max_len=0
		for j in $(strings $i); do # for every string in file
			len=${#j} # expand variable to j to it's length number works muhch faster then | wc -c
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
