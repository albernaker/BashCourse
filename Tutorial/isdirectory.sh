#!/Bin/bash

FILE=$1
if [ -f $FILE ]
  then
    echo “It is reguler File”
    exit
elif [ -d $FILE ]
   then
     echo “It is directory”
     exit 1
else
    echo “Another type”
    exit 2
fi
