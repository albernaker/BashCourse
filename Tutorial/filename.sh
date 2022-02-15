#!/bin/bash



echo "Do you want to read a file or write?"
read ans
	case $ans in
		read|READ|Read)
		echo -p "Entrer filename to check" 
		read fileName
		if [[ -f "$fileName" ]]
		then
			while IFS= read -r line
			do
        			echo "$line"
			done < $fileName
		
		else 
			echo"the filename doesn't exist"
		fi
		;;

	
	write|WRITE|Write)
echo -p "Entrer filename to check and write in after" 
read fileName

if [[ -f "$fileName" ]]
then
	echo "Enter text you want to append"
	read fileText
	echo "$fileText" >> $fileName
else 

	echo "$fileName doesn't exist, do you want to create it?"
	read -p "Yes|No" answer

	case $answer in
	       	yes|Yes|YES)
		touch $fileName
		;;
		No|no|NO|n)
			echo "It's okay, Good Bye!"
		;;
	esac
fi

esac
