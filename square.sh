#!/bin/bash

# Check if an argument is provided
if [ $# -eq 0 ]; then
    echo "Error: No number provided"
    echo "Usage: $0 <number>"
    exit 1
fi

# Get the input number
number=$1

# Check if the input is a valid number
if ! [[ "$number" =~ ^-?[0-9]+$ ]]; then
    echo "Error: '$number' is not a valid integer"
    exit 1
fi

# Calculate the square
square=$((number * number))

# Output the result
echo "$square"
