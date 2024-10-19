#!/bin/bash

# Program to encrypt a file

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <file-to-encrypt>"
    exit 1
fi

INPUT_FILE=$1

if [ ! -f "$INPUT_FILE" ]; then
    echo "Error: File '$INPUT_FILE' not found!"
    exit 1
fi

read -sp "Enter password for encryption: " PASSWORD
echo

zip --password "$PASSWORD" "$INPUT_FILE.zip" "$INPUT_FILE"

if [ "$?" -eq 0 ]; then
    echo "File '$INPUT_FILE' has been successfully encrypted."
    echo "Encrypted file: $INPUT_FILE.zip"
else
    echo "Encryption failed!"
fi

