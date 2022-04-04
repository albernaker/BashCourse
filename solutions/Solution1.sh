#!/bin/bash

PK="gzip"

ncpus() {
	local n=$(cat /proc/cpuinfo | grep processor | wc -l)
	echo $((n + 0 == 0 ? 1 : n))
}

all-in-one() {
	echo "Using $PK..." >&2
	tee >(sha256sum >$1.sha256) >(sha1sum >$1.sha1) >(md5sum >$1.md5) | $PK
}

# main

if [ "$1" = "" ] ; then
	echo "Syntax error, try: $0 file" >&2
	echo "E.g. $0 file.txt" >&2
	echo "E.g. $0 - >out.zstd" >&2
	exit 1
fi

if type zstd >/dev/null 2>&1 ; then
	PK="zstd -T$(ncpus)"
fi

if [ $1 = "-" ] ; then
	all-in-one - # using stdin/stdout
else
	all-in-one "$1" <$1 >$1.zstd
fi


