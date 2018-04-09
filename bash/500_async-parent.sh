#!/usr/bin/env bash

## 500_async-parent.sh
## async-parent: Asynchronous execution demo (parent)

echo "Parent: starting..."

echo "Parent: launching child script..."
./500_async-child.sh &
pid=$!
echo "Parent: child (PID= $pid) launched."

# echo "Parent: continuing..."
# sleep 2

echo "Parent: pausing to wait for child to finish..."
wait $pid

echo "Parent: child is finished. Continuing..."
echo "Parent: parent is done. Exiting."
