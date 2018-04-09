#!/usr/bin/env bash

## 458_sys_info_page.sh
## final_sys_info_page: program to output a system information page

PROGNAME=$(basename $0) # constant PROGNAME= basename command trims running path which stored in $0 so now it's only filename
TITLE="System Information Report For $HOSTNAME" # constant TITLE= text with value of globale variable $HOSTNAME
CURRENT_TIME=$(date +"%x %r %Z") # date in format i don't know
TIMESTAMP="Generated $CURRENT_TIME, by $USER" # constant TIMESTAMP= text with value of globale variables

report_uptime () { # inbeded function declaratiom
# here document counstaction which ignore TABS by <<-
	cat <<- _EOF_
			<H2>System Uptime</H2>
			<PRE>$(uptime)</PRE>
			_EOF_
	return # function returns results
} # function ended

report_disk_space () { # inbeded function declaration
# here document counstaction which ignore TABS by <<-
# command substitution required to evalute command and not just use it as text
	cat <<- _EOF_
			<H2>Disk Space Utilization</H2>
			<PRE>$(df -h)</PRE>
			_EOF_
	return
}

report_home_space () {
	local format="%8s%10s%10s\n" # forman variable contains convension specification for printf command. firstt string 8 chars, second and third - 10
	local i dir_list total_files total_dirs total_size user_name # local variables diclaration

	if [[ $(id -u) -eq 0 ]]; then # if user id equals 0 (root)
		dir_list=/home/* # assign each user home paths to dir_list variable
		user_name="All Users" # assicg this "text" to user_name variable
	else # if not root
		dir_list=$HOME # assign current user home path to dir_list
		user_name=$USER # assign current user name to user_name
	fi

	echo "<H2>Home Space Utilization ($user_name)</H2>" # bla bla bla

	for i in $dir_list; do # for each value in dir_list array do
		total_files=$(find $i -type f | wc -l) # find each regular file and count it
		total_dirs=$(find $i -type d | wc -l) # find each directory and count it
		total_size=$(du -sh $i | cut -f 1) # retrive disc usage report and cut first IFS separated field

		echo "<H3>$i</H3>" # echo current i value to H3 html tag
		echo "<PRE>" # preformated output begins
		printf "$format" "Dirs" "Files" "Size" # print "text" using convension specificatiton format defind in format variable (printf format should be specified in quotes)
		printf "$format" "----" "-----" "----" # same
		printf "$format" $total_dirs $total_files $total_size # same for each variable calculated latly
		echo "</PRE>" # end of preformated block
	done # end of for loop
	return # function return results
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
