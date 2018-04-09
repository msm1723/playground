#!/usr/local/bin/bash

pizda() { echo "<a href=http://huilo.ru>${1}</a>"; } # simple funtciton ; is used instead of \n

create_html_page () {
	string=${1} # assign string var from first function parameter
 	echo "
	<html>
	<body>
	$string
	$(pizda 'nuka naka otsuda')
	</body>
	</html>
	"
}
# pizda called with parameter 'nuka naka otsuda'

create_html_page "hello world"
