#!/bin/bash

LINKS="https://releases.ubuntu.com/20.04.4/ubuntu-20.04.4-desktop-amd64.iso https://releases.ubuntu.com/21.10/ubuntu-21.10-desktop-amd64.iso"


download_and_compress() {
	local FN=$(awk -F / '{print $NF}' <<<$1)
	echo $1
	exit
	wget "$1" -O >(tee "$FN" | zstd -T2 >"$FN".zstd)
}
	
for i in $LINKS ; do	
	download_and_compress $i &
done

wait

