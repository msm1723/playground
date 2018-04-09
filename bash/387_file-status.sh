#!/usr/bin/env bash

## 387_file-status.sh
## test-file: Evaluate the status of a file
## [ test expression ]

FILE=~/.bashrc
if [ -e "$FILE" ]; then # if file exists
	if [ -f "$FILE" ]; then # if file exists and is a regular file
		echo "$FILE is a regular file."
	fi
	if [ -d "$FILE" ]; then # file exists and is a directory.
		echo "$FILE is a directory."
	fi
	if [ -r "$FILE" ]; then # file exists and is readable (has readable permission for the effective user)
		echo "$FILE is readable."	
	fi
	if [ -w "$FILE" ]; then # file exists and is writable (has write permission for theeffective user)
		echo "$FILE is writable."
	fi
	if [ -x "$FILE" ]; then # file exists and is executable (has execute/search permission for the effective user)
		echo "$FILE is executable/searchable."
	fi
	else
		echo "$FILE does not exist"
		exit 1
fi
exit
