#!/bin/bash

# Check if both arguments are provided
if [ $# -lt 2 ]; then
    echo "Error: Missing arguments."
    echo "Usage: $0 <writefile> <writestr>"
    exit 1
fi

writefile=$1
writestr=$2

# Create the directory path if it doesn't exist
mkdir -p "$(dirname "$writefile")"

# Try to create/overwrite the file with writestr
echo "$writestr" > "$writefile"
if [ $? -ne 0 ]; then
    echo "Error: Could not create file $writefile"
    exit 1
fi
