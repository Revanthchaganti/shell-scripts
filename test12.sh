#!/bin/bash

# Function to calculate the factorial of a number
factorial() {
  local number=$1
  local result=1

  for ((i=1; i<=number; i++)); do
    result=$((result * i))
  done

  echo $result
}

# Prompt the user to enter a number
read -p "Enter a number: " input

# Validate the input
if [[ $input =~ ^[0-9]+$ ]]; then
  # Call the factorial function with the input number
  factorial_result=$(factorial $input)
  echo "The factorial of $input is: $factorial_result"
else
  echo "Invalid input. Please enter a valid positive integer."
fi

