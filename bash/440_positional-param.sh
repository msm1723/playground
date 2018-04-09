#!/usr/bin/env bash

## 440_positional-param.sh
## posit-param: script to view command line parameters

echo "
Number of arguments: $#
\$0 = $0
\$1 = $1
\$2 = $2
position3 = $3
position-4 = $4
\${5} = ${5}
\$6 = $6
\$7 = $7
"
# $# counts passed arguments
# $0 alway contain path from where script is running
# more then 9 need {}
