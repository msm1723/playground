#!/usr/bin/env bash

## 496_trap-demo.sh
## trap-demo: simple signal handling demo

trap "echo 'I am ignoring you.'" SIGINT SIGTERM # this overrides default behaviour in case of retriving one of those signals so it's echos instead of exiting
for i in {1..5}; do
	echo "Iteration $i of 5"
	sleep 5
done
