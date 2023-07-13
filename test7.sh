#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Usage: $0 <input_file>"
  exit 1
fi

input_file=$1

if [ ! -f "$input_file" ]; then
  echo "Input file not found: $input_file"
  exit 1
fi

awk '{print $1}' "$input_file"

