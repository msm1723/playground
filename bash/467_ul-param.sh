#!/usr/bin/env bash

## 467_ul-param.sh
## ul-param: demonstrate case conversion via parameter expansion

if [[ $1 ]]; then
	echo ${1,,} # all in lower case
	echo ${1,} # only first in lower case other unchanged
	echo ${1^^} # all in UPPER CASE
	echo ${1^} # only first in UPPER case other unchanged
fi
