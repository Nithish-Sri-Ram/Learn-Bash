#!/bin/bash

n=$1

factorial=1

for ((i=2 ;i<=n; i++));do
	factorial=$((factorial*i))
done

echo "Factorial of $n is $factorial"

