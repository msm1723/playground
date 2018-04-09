usage () {
	echo "$PROGNAME: usage: $PROGNAME [-f file | -i]"
	return
}

# process command line options
interactive=
filename=

while [[ -n $1 ]]; do # whili possitional parameter not empty do
	case $1 in
		-f | --file)		shift # shift needed to go to next file which should be file name in this case
					filename=$1
				;;
		-i | --interactive) 	interactive=1
					;;
		-h | --help) usage
					exit
					;;
		*) usage >&2
					exit 1
					;;
	esac
	shift # shift wii advance the positional parameters to ensure that the loop will eventually terminate
done

# interactive mode
if [[ -n $interactive ]]; then
	while true; do
		read -p "Enter name of output file: " filename
		if [[ -e $filename ]]; then
			read -p "'$filename' exists. Overwrite? [y/n/q] > "
			case $REPLY in
				Y|y)	break
					;;
				Q|q)	echo "Program terminated."
					exit
					;;
				*)	continue
					;;
			esac
		elif [[ -z $filename ]]; then
			continue
		else
			break
		fi
	done
fi

