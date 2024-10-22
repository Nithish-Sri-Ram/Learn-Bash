#!/bin/bash

#Takes 3 input files as arguments and concatenates all the characters present in them and append tehm into a single file in order 

if [ "$#" -ne 3 ]; then 
	echo "Enter at least 3 file names as arguments"
	exit 1
fi

file1=$1
file2=$2
file3=$3
combined_file="combined_files.txt"

for file in "$file1" "$file2" "$file3"; do
	if [ ! -f "$file" ]; then
		echo "Error: FIle '$file' not found"
		exit 1
	fi
done

cat "$file1" "$file2" "$file2" "$file3" > "$combined_file"

words=$(wc -w < "$combined_file")
echo "The combined file '$combined_file' has $words words."

