#!/usr/bin/env bash

## 497_trap-demo2.sh
## trap-demo2: simple signal handling demo

exit_on_signal_SIGINT () {
	echo "Script interrupted." 2>&1
	exit 0
}
exit_on_signal_SIGTERM () {
	echo "Script terminated." 2>&1
	exit 0
}

trap exit_on_signal_SIGINT SIGINT # functions added to handle interruption signals
trap exit_on_signal_SIGTERM SIGTERM # so inside function you could for example clean files before exit

for i in {1..5}; do
	echo "Iteration $i of 5"
	sleep 5
done
