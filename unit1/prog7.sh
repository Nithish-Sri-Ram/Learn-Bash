#!/bin/bash

# fibanocci series

n=$1

a=0
b=1

for ((i=0; i<n; i++)); do
	echo -n "$a "
	fn=$((a+b))
	a=$b
	b=$fn
done
echo

