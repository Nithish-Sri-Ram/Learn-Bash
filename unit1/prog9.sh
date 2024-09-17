#!/bin/bash

# The sum of the digits of a number

number=$1

sum=0

while [ "$number" -gt 0 ]; do
	digits=$((number%10))
	sum=$((sum+digits))
	number=$((number/10))
done

echo "The sum of the digits is $sum"

