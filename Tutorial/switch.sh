#!/bin/bash


echo "Do you know Bash Programming?"

read -p "Yes/No?:" Answer


	case $Answer in
		Yes|yes|y|Y)
			echo "That's amazing."
			;;	
		No|no|n|N)
			echo "It's easy. Let's start learning."
			;;
	esac


