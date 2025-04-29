#!/bin/bash

# take in input
number="$1"

REGEX_NUMBER="^-?[0-9]+$"
# Verify number was passed
if [[ $number =~ $REGEX_NUMBER ]]; then
    # Check number parity 
    if [[ $(($number % 2)) -eq 0 ]]; then
        echo "even"
    else
        echo "odd"
    fi
else
    echo "Invalid number $number"
fi
