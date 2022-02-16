#!/bin/bash

#How to open a url using parameters.

echo "Write a url that you want to open"
read URL
length=${#URL}

echo $length
	if (($length != 0 ))
	then	
		com=${URL: -4}
		www=${URL:0:4}
		es=${URL: -3}
		
	       #echo $com $www $es
		
		if [ $www = "www." ] 
		then
		 xdg-open "https://$URL.com" 
		elif [[ $com = ".com" || $es = ".es" ]]
		then
			xdg-open "https://www.$URL"

	 	elif [[ $com = ".com" || $es = ".es" && $www = "www." ]] 
		then
			xdg-open "https://$URL."
		else 
		xdg-open "https://www.$URL.com"	
		fi	
	else 

		echo "error has d'escriure algun url"
	fi 

