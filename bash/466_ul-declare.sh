#!/usr/bin/env bash

## 466_ul-declare.sh
## ul-declare: demonstrate case conversion via declare. usefull to normalize user-provided values
## logic will applied to each positional parameter

declare -u upper # variable value always converted to UPPER CASE
declare -l lower # variable value always converted to lower case

for i; do
	if [[ $1 ]]; then
		upper="$1"
		lower="$1"
		echo $upper
		echo $lower
	fi
	shift
done
