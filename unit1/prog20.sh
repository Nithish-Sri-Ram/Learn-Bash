#!/bin/bash

#Changes the name of the file to lowercase

if [ "$#" -eq 0 ];then
	echo "Pass at least one parameter as argument"
	exit 1
fi

#Loop through each argument
for file in "$@"; do
	if [ -f "$file" ]; then 
		lowerCase_file=$(echo "$file" | tr '[:upper:]' '[:lower:]')

		if [ "$file" != "$lowerCase_file" ];then 
			mv "$file" "$lowerCase_file"
			echo "REnamed '$file' to '$lowerCase_file' "
		else
			echo "'$file' is already in lower case"
		fi
	else
		echo "Error: File '$file' not found"
	fi
done

