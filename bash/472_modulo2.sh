#!/usr/bin/env bash

## 472_modulo2.sh
## modulo2: demonstrate the modulo operator

for ((i = 0; i <= 30; ++i )); do
	if (((i % 5) == 0 )); then
		printf "<%d> " $i
	else
		printf "%d " $i
	fi
done

printf "\n" # ???
