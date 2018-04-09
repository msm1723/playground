#!/usr/bin/env bash

## 473_bitwise-shift.sh

for ((i=0;i<8;++i));
	do echo $((1<<i));
done # **2
for ((i=0;i<8;++i)); do echo $((2<<i)); done # **2
for ((i=0;i<8;++i)); do echo $((3<<i)); done # **3
for ((i=0;i<8;++i)); do echo $((4<<i)); done # **4
for ((i=0;i<8;++i)); do echo $((5<<i)); done # **5

