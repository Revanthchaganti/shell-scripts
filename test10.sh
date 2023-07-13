#!/bin/bash

# Check if CSV file is provided
if [ -z "$1" ]; then
  echo "Please provide the CSV file as an argument."
  exit 1
fi

# Check if column number is provided
if [ -z "$2" ]; then
  echo "Please provide the column number as the second argument."
  exit 1
fi

# Assign the arguments to variables
csv_file=$1
column_number=$2

# Check if the CSV file exists
if [ ! -f "$csv_file" ]; then
  echo "CSV file not found."
  exit 1
fi

# Calculate the average using awk
average=$(awk -F',' -v col="$column_number" 'BEGIN{ sum=0; count=0 } NR>1{ sum+=$col; count++ } END{ print sum/count }' "$csv_file")

# Print the average value
echo "Average value of column $column_number: $average"

