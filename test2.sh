#!/bin/bash

# Check if both arguments are provided
if [ $# -ne 2 ]; then
  echo "Usage: $0 <directory_path> <file_extension>"
  exit 1
fi

directory_path="$1"
file_extension="$2"

# Check if the provided directory exists
if [ ! -d "$directory_path" ]; then
  echo "Directory $directory_path does not exist."
  exit 1
fi

# List files with the given file extension in the directory
find "$directory_path" -type f -name "*.$file_extension"


