#!/bin/sh -e
PATH=/bin:/usr/bin
while [ $# -ne 0 ]; do
	src="$1"
	dst="`basename $1 .~1~`.orig"

	echo "${src}"
	mv "${src}" "${dst}"

	shift
done
