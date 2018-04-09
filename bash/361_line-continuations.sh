#!/usr/bin/env bash

## 361_line-continuations.sh

find ~/playground \
	\( \
	-type d \
	-not -perm 0700 \
	-exec chmod 0700 '{}' ';' \
\) \
-or \
\( \
	-type f \
	-not -perm 0700 \
	-exec chmod 0700 '{}' ';' \
\) \
