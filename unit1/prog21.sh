#!/bin/bash

#Convert all upper case characters of file to their lowercase

if [ "$#" -ne 1 ]; then
	echo "Enter atleast one file name"
	exit 1
fi

file=$1

if [ ! -f "$file" ]; then
	echo "Error: file '$file' not found"
	exit 1
fi

tr '[:uppen:]' '[:lower:]' < "$file" > temp_file && mv temp_file "$file"

echo "All characters in '$file' have been converted to lower case."

