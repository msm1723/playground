#!/usr/bin/env bash

## 452_sys_info_page.sh
## sys_info_page: program to output a system information page

PROGNAME=$(basename $0) # constant PROGNAME= basename command trims running path which stored in $0 so now it's only filename
TITLE="System Information Report For $HOSTNAME" # constant TITLE= text with value of globale variable $HOSTNAME
CURRENT_TIME=$(date +"%x %r %Z") # date in format i don't know
TIMESTAMP="Generated $CURRENT_TIME, by $USER" # constant TIMESTAMP= text with value of globale variables
report_uptime () { # inbeded function declaratiom
# here document counstaction which should ignore TABS
	cat <<- _EOF_
			<H2>System Uptime</H2>
			<PRE>$(uptime)</PRE>
			_EOF_
	return # function returns results
} # function ended

report_disk_space () { # inbeded function declaration
# here document counstaction which should ignore TABS
# command substitution required to evalute command and not just use it as text
	cat <<- _EOF_
			<H2>Disk Space Utilization</H2>
			<PRE>$(df -h)</PRE>
			_EOF_
	return
}

report_home_space () {
	if [[ $(id -u) -eq 0 ]]; then # modern test checks if current user is root
		cat <<- _EOF_
			<H2>Home Space Utilization (All Users)</H2>
			<PRE>$(du -sh /home/*)</PRE>
			_EOF_
	else
		cat <<- _EOF_
			<H2>Home Space Utilization ($USER)</H2>
			<PRE>$(du -sh $HOME)</PRE>
			_EOF_
	fi
	return
}

usage () {
	echo "$PROGNAME: usage: $PROGNAME [-f file | -i]"
	return
}

write_html_page () {
	cat <<- _EOF_
		<HTML>
		<HEAD>
		<TITLE>$TITLE</TITLE>
		</HEAD>
		<BODY>
		<H1>$TITLE</H1>
		<P>$TIMESTAMP</P>
		$(report_uptime)
		$(report_disk_space)
		$(report_home_space)
		</BODY>
		</HTML>
		_EOF_
return
}

# process command line options

interactive=
filename=

while [[ -n $1 ]]; do # while positional parameter $1 is non-empty string do
	case $1 in # case branching check $1 content
		-f | --file) shift # if it's -f or --file option it shifts to next positional parameter (where filename expected to be)
			filename=$1 # assigne positional parameter $1 value to filename variable
			;;
		-i | --interactive) interactive=1 # if -i|--interactive) assigne value 1 to interactive variable
			;;
		-h | --help) usage # if help needed usege funcion called
			exit # and program terminated
			;;
		*) usage >&2 # all other values of $1 also will bring help and add output to stderr
			exit 1 # but exit with non-zero exit code (which means error)
			;;
	esac # case branching ended
	shift # shift to next positional variable to check if while is needed again or it's empty
done

# interactive mode

if [[ -n $interactive ]]; then # if itnteractive variable contains non-empty string then
	while true; do # run infinet while loop
		read -p "Enter name of output file: " filename # read keybord and assign it to filename variable
		if [[ -e $filename ]]; then # if file with $filetname exists then
			read -p "'$filename' exists. Overwrite? [y/n/q] > " # read keybord and assign it to $REPLY
			case $REPLY in # case checks $REPLY variable
				Y|y) break # if yes break the loop
				;;
				Q|q) echo "Program terminated." # if quit echo
					exit # and quit
					;;
				*) continue # otherwise next loop so if n user can select another name
					;;
			esac
		elif [[ -z $filename ]]; then # if empty filename provided
			continue # ask for it again
		else
			break # this probably will never be in used and needed for syntax
		fi
	done # end of loop
fi

# output html page
if [[ -n $filename ]]; then # if $filename string is non-empty
	if touch $filename && [[ -f $filename ]]; then # if create file with $filename is ok then
		write_html_page > $filename # put write_html_page function output to created file
	else
		echo "$PROGNAME: Cannot write file '$filename'" >&2 # if file wasnt created write error to stderr
	exit 1
	fi
	else
		write_html_page # run write_html page function (output appears in terminal)
fi

