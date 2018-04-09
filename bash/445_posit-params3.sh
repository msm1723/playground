#!/usr/bin/env bash

## 445_posit-params3.sh
## posit-params3: script to demonstrate $* and $@

print_params () {
	echo "\$1 = $1"; echo "\$2 = $2" # charecter ; helps to write two commands in one line
	echo "\$3 = $3"
	echo "\$4 = $4"
}

pass_params () {
	echo -e "\n" '$* :'; print_params $*
	echo -e "\n" '"$*" :'; print_params "$*"
	echo -e "\n" '$@ :' # -e tels echo to interprit \ as special simble so new line appears before printing
	print_params $@
	echo -e "\n" '"$@" :'
	print_params "$@" # "$@" most usefull because keeps parameter integrity
}

echo "pass_params \"word\" \"words with spaces\""
pass_params "word" "words with spaces"
