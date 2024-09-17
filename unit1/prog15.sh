#!/bin/bash

#Check the last modified file name as a command argument

file=$1

#Check if file is present
if [ ! -f "$file" ]; then
	echo "Error: file: $file not found"
	exit 1
fi

mod_time=$(stat -c %y "$file")
echo "The last modification time of $file is: $mod_time"

