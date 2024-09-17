#!/bin/bash

file=$1

if [ ! -f "$file" ]; then
	echo "Error: file $file is not found"
	exit 1
fi

#Read the file line by line
line_no=1
while IFS= read -r line; do
	# Count the number of characters in the line including spaces"
	char_count=$(echo -n "$line" | wc -c)

	#Count the number of words in the line
	word_count=$(echo "$line" | wc -w)

	echo "Line $line_no - charecter count: $char_count and word count: $word_count"

	((line_no++))
done < "$file"

