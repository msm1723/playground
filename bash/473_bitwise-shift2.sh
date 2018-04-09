#!/usr/bin/env bash

## 473_bitwise-shift2.sh

for ((i=0;i<8;++i)); do a=$((1<<i));
	printf "%d\t" "$a";
done # **2
echo
for ((i=0;i<8;++i)); do a=$((2<<i)); printf "%d\t" "$a"; done # **2
echo
for ((i=0;i<8;++i)); do a=$((3<<i)); printf "%d\t" "$a"; done # **3
echo
for ((i=0;i<8;++i)); do a=$((4<<i)); printf "%d\t" "$a"; done # **4
echo
for ((i=0;i<8;++i)); do a=$((5<<i)); printf "%d\t" "$a"; done # **5
