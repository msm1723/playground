#!/usr/local/bin/bash

create_html_page () {
	string=${1} # retrive function parameter from function call position 1
	echo "
		<html>
		<body>
		$string
		</body>
		</html>"
}

create_html_page "hello world"
