#!/usr/local/bin/bash

word="bulshit"
string="talk $word is fun"

create_html_page () {
	cat <<- _EOF_
	<html>
	<body>
	$string
	</body>
	</html>
	_EOF_
return
}

create_html_page


