#!/bin/bash

f() {
	local i

	echo "numparams: ${#@}"

	for i in $@ ; do
		echo "p: $i"
	done
	echo "----"
	for i in "$@" ; do
		echo "p: $i"
	done
}

echo aaaaaaa

f 1 2 3

echo bbbbbbb

f "1 1" "2 2" "3 3"

