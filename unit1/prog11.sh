#!/bin/bash

# Program to check if a string is greater than 5 characters 

echo "enter a string"
read str

len=${#str}

if [ $len -lt 5 ]; then
	echo "The string must contain 5 characters"
else
	echo "The string is valid!"
fi

