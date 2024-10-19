#!/bin/bash

# Remove blank spaces in a file and give it as simgle.

if [ $# -ne 2 ]; then
    echo "Usage: $0 inputfile outputfile"
    exit 1
fi

input_file="$1"
output_file="$2"

# Check if the input file exists
if [ ! -f "$input_file" ]; then
    echo "Input file not found!"
    exit 1
fi

tr -d ' ' < "$input_file" > "$output_file"

echo "Blank spaces removed. Output written to: $output_file"

