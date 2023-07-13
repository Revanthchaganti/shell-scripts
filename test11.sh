#!/bin/bash

is_prime() {
    local num=$1
    if ((num < 2)); then
        return 1
    fi

    for ((i = 2; i <= num / 2; i++)); do
        if ((num % i == 0)); then
            return 1
        fi
    done

    return 0
}

if [[ $# -eq 0 ]]; then
    echo "Please provide a number as a command-line argument."
    exit 1
fi

number=$1
is_prime "$number"
result=$?

if ((result == 0)); then
    echo "$number is a prime number."
else
    echo "$number is not a prime number."
fi

