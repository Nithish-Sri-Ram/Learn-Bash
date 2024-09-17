#!/bin/bash

d1=$1
d2=$2

if [ ! -d "$d1" ]; then
	echo "error $d1 is not a valid directory"
	exit 1
fi

if [ ! -d "$d2" ]; then 
	echo "error $d2 is not a valid directory"
	exit 1
fi

for file1 in "$d1"/*; do
	fileName=$(basename "$file1")
	
	file2="$d2/$fileName"
	
	#Check if the same named file is in the second directory
	if [ -f "$file2" ]; then
		if cmp -s "$file1" "$file2"; then
	#If the contents match delete the file in the first direcotry
			echo "Deleting $file1 as it matches $file2"
			rm "$file1"
		fi
	fi
done

echo "Process completed."

