#!/bin/bash

# example1.sh
#
# Bash example
#
# Copyright...
#

# Globals

REPO_PATH=/dslsdjlfsjdkjlsd
COMMANDS="sum cmp concat"

# Functions

log() { echo "$@" >&2 ; }

sum()
{
	if [ "$1" = "" ] || [ "$2" = "" ] ; then return 1 ; fi
	if [ "$1" = "" ] || [ "$2" = "" ] ; then
		return 1
	fi
	if [ "$1" = "" ] || [ "$2" = "" ]
       	then
		return 1  # error: void parameters
	fi
	echo $(($1 + $2))
}

cmp() {
	[ "$1" = "$2" ]
}

concat() {
	echo "$1$2"
}

sleepn() {
	sleep $1
	echo "$1 slept"
}

job_test() {
	sleepn 120 &
	sleepn 240 &
	sleepn 300 &
	wait
	echo "sleep done"
}

syntax_error() {
	log "[$FUNCNAME]: $1: command not found"
	log "Syntax: $0 {$(tr ' ' '|' <<<$COMMANDS)"
}

# Main

case $1 in
cmp|sum|concat) if ! "$@" ; then log "$1: command error ($@)" ; fi ;;
*) syntax_error "$@" ;;
esac


# compress and hash all in one pass
#tee >(md5sum >disk.img.md5) >(sha256sum >disk.img.sha256) <disk.img | lz4 >disk.img.lz4

