#!/bin/bash

#The third step will be a sum using conditionals

A=$1
B=$2 

result=$(( A + B + 0))

	if [ $result =  0 ]
	then
	echo "Result A + B equals 0"
	
		
	elif [ $result < 10 ]
	then
		echo "Result is less than 10  = $result"
	

	elif [ $result > 10 ]
	then
		echo "Result is greater than 10 =  $result"
	fi

