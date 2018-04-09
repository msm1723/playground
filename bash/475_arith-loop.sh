#!/usr/bin/env bash

## 475_arith-loop.sh
## arith-loop: script to demonstrate arithmetic operators
finished=0
a=0

printf "a\ta**2\ta**3\ta**4\ta**5\ta**6\ta**7\n" # print table header
printf "=\t====\t====\t=====\t======\t=======\t========\n" # print underline for header

until ((finished)); do # untill finish returns positive number (is true) do
	b=$((a**2))
	c=$((a**3))
	d=$((a**4))
	e=$((a**5))
	f=$((a**6))
	g=$((a**7))
	
	printf "%d\t%d\t%d\t%d\t%d\t%d\t%d\n" $a $b $c $d $e $f $g # print each result in colum
	printf "_\t____\t____\t_____\t______\t_______\t________\n"
	((a<10?++a:(finished=1))) # if a less then 10, then ++a, else finished=1. This is ternary operator.
done
