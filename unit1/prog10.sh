#!/bin/bash


input_string="$1"

reverse_string() {
    local str="$1"
    local reversed=""
    local len=${#str}

    for (( i=len-1; i>=0; i-- )); do
        reversed="${reversed}${str:$i:1}"
    done

    echo "$reversed"
}


reversed_string=$(reverse_string "$input_string")

if [ "$input_string" = "$reversed_string" ]; then
    echo "$input_string is a palindrome"
else
    echo "$input_string is not a palindrome"
fi

