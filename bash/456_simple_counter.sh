#!/usr/bin/env bash

## 456_simple_counter.sh
## simple_counter: demo of C style for command

DELAY=1
for (( i=1; i<=22; i=i+1 )); do
	echo $i
	sleep $DELAY
done
