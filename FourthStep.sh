#!/bin/bash
#now we want to do a conditional and a loop
A=$1 
B=$2
C=$3

Result=$(( A + B + C + 0 ))
echo $Result

	if [[ $Result < 20 && $Result > 10 ]]
	then
		
		echo "El resultat es mes petit que 20  i mes gran que 3"
		for ((i = $Result; i >= 0; i--));

		do
			echo $i
		done
	fi



