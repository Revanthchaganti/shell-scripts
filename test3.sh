#!/bin/bash

# Prompt the user to enter a number
echo "Enter a number: "
read number

# Check if the number is positive, negative, or zero
if (( number > 0 )); then
    echo "The number is positive."
elif (( number < 0 )); then
    echo "The number is negative."
else
    echo "The number is zero."
fi

