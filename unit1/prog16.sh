#!/bin/bash

# Program to do spell check

if [ $# -eq 0 ]; then
    echo "Usage: $0 filename"
    exit 1
fi


if [ ! -f "$1" ]; then
    echo "File not found!"
    exit 1
fi


echo "Checking spelling for file: $1"
aspell -c "$1"

echo "Spell check completed."

