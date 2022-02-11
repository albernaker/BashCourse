#!/bin/bash

#How to open a url using parameters.

echo "Write a url that you want to open"
read URL
length=${#URL}

echo $length
	if (($length != 0 ))
	then 
		xdg-open "https://$URL" 
	else 

		echo "error has d'escriure algun url"
	fi 

