#!/bin/bash

count=3

for ((i=1; i<=count; i++)); do
	echo "Displaying the process running - Attempt $i"

	#This displays the current running process
	ps -e


	if [ $i -lt $count ]; then
		sleep 30
	fi
done

echo "Process display completed"

