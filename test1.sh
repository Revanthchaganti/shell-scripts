#!/bin/bash

# Prompt for user's name
read -p "Enter your name: " name

# Get the current date and time
current_date=$(date "+%Y-%m-%d")
current_time=$(date "+%H:%M:%S")

# Print the greeting message
echo "Hello, $name! The current date is $current_date and the current time is $current_time."

