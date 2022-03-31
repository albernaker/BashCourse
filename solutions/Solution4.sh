

hashcalc() {
	tee >(sha256sum >"$1".sha256) >(sha1sum >"$1.sha1") >(md5sum >"$1.md5") <"$1" | crc32 <(cat) >"$1.crc32"
}


if [ $1 = "" ] ; then
	echo "Error: no parameters given. E.g. $0 file" 
	exit 1
fi

hashcalc "$1"

