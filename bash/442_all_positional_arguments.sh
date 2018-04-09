#!/usr/bin/env bash

## 442_all_positional_arguments.sh
## posit-param2: script to display all arguments

count=1
while [[ $# -gt 0 ]]; do
	echo "Argument $count = $1"
	count=$((count + 1))
	shift # so bash take number returned by $# and puts it to while loop and each shift make it -1 untill it's beame == 0
done
