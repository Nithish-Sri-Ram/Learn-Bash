#!/bin/bash

echo "enter n value"
n=$1
echo "enter all the numbers below"
sum=0
count=$n
while [ $n -gt 0 ]
do
	read x
	sum=$((x+sum))
	n=$((n-1))
done
avg=$((sum/count))
echo "The avrage of the unbers is: $avg"

