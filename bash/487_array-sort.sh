#!/usr/bin/env bash

## 487_array-sort.sh
## array-sort: Sort an array

a=(f e d c b a)

echo $a # any reference to array without subscript refers to element zero, so this just show first element

echo "Original array: ${a[@]}"

a_sorted=($(for i in "${a[@]}"; do echo $i; done | sort))

echo "Sorted array: ${a_sorted[@]}"
