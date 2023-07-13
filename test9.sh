#!/bin/bash

# Initialize the sum variable
sum=0

# Loop from 1 to 100
for (( i=1; i<=100; i++ ))
do
  # Add the current number to the sum
  sum=$((sum + i))
done

# Print the sum
echo "The sum of numbers from 1 to 100 is: $sum"

