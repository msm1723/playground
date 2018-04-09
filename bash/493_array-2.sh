#!/usr/bin/env bash

## 493_array-2.sh
## array-2: Use arrays to tally file owners

declare -A files file_group file_owner groups owners # declare assosiative arrays

if [[ ! -d "$1" ]]; then # check if first positional param is not a directory
	echo "Usage: ${0##*/} dir" >&2
	exit 1
fi

for i in "$1"/*; do # for each file in directory /*
	owner=$(stat -c %U "$i") # asshign each file user owner to owner var
	group=$(stat -c %G "$i") # and group
	files["$i"]="$i" # add filename to array under subscript with same file name
	file_owner["$i"]=$owner # add owner to array under subscript with same file name
	file_group["$i"]=$group # add group to array under subscript with same file name
	((++owners[$owner])) # +1 to owners
	((++groups[$group])) # +1 to groups
done

# List the collected files
{ for i in "${files[@]}"; do # expands to each array element
	printf "%-40s %-10s %-10s\n" \ # fprint 40 minuses | 10 minuses | 10 minuses
		"$i" ${file_owner["$i"]} ${file_group["$i"]} # print file | file owner | file group
done } | sort # for loop is enclosed in braces forming a group command and. This permits the entire output of the loop to be piped into the sort command.

echo

# List owners
echo "File owners:"
	{ for i in "${!owners[@]}"; do # expands to each array subscript (index)
		printf "%-10s: %5d file(s)\n" "$i" ${owners["$i"]}
done } | sort # for loop is enclosed in braces forming a group command and. This permits the entire output of the loop to be piped into the sort command.
echo

# List groups
echo "File group owners:"
{ for i in "${!groups[@]}"; do # expands to each array subscript (index)
	printf "%-10s: %5d file(s)\n" "$i" ${groups["$i"]}
done } | sort
