#!/bin/bash
input="file.txt"
inputWrite="filesolution.txt"
pkg="zstd"

if [ -f "$inputWrite" ]; then
     	rm -r $inputWrite
fi

if sudo apt-get -qq install -y $pkg; then
    echo "Successfully installed $pkg"
else
    echo "Error installing $pkg"
fi

while IFS= read -r line; do echo -n $line | sha256sum |  md5sum | sha1sum |& tee -a $inputWrite >(zstd $inputWrite); done < $input

#zstd $inputWrite
