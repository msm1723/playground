#!/usr/bin/env bash

## 469_modulo.sh
## modulo: demonstrate the modulo operator

for ((i = 0; i <= 30; i = i + 1)); do
	remainder=$((i % 5))
	if (( remainder == 0 )); then
		printf "<%d> " $i
	else
		printf "%d " $i
	fi
done

printf "\n" # ???
