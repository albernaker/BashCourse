#!/bin/bash

a=$1
b=$2
log=$3


add() {

	result=$(( $a + $b ))
	echo $result
}

substract() {

	result=$(( $a - $b ))
        echo $result
       
}

# main

if [[ $log = "+" ]]
then
	add
elif [[ $log = "-" ]]
then
	substract
fi


