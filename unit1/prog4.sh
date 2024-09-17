#! /bin/bash

#prime number

echo "enter a number"
read x
count=0
i=1
while [ $x -gt $i ]
do
	if [ $((x%i)) -eq 0 ]
	then
		count=$((count+1))
	fi
	i=$((i+1))
	done
if [ $count -eq 1 ]
	then
		echo "Prime number"
	else
		echo "not a prime number"
fi

