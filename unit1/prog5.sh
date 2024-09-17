#! /bin/bash

# string or number

echo "enter your input"
read ip
if [[ $ip =~ ^[0-9]+$ ]]
then
	echo "the input is a number"
else
	echo "The input is a string"
fi


