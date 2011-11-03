#!/bin/sh

MODS_HAVE_TESTS="dcmwlm ofstd"

set -e

test_ofstd() {
	ls | while read f; do
		file "$f" | fgrep executable >/dev/null || continue
		echo "=====> Running test $f"
		./"$f"
	done
}

test_dcmwlm() {
#	ls ../wlistqry/*.dump | 
}

for m in ${MODS_HAVE_TESTS}; do
	echo "====> Running tests for module $m"
	(eval "cd $m/tests && test_$m")
done
