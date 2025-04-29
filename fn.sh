#!/bin/bash


addThree(){
    # read input
    number="$1"

    REGEX_NUMBER="^-?[0-9]+$"
    # Verify number was passed
    if [[ $number =~ $REGEX_NUMBER ]]; then
        echo $(($number + 3))
    else
        echo "Invalid Number $number"
    fi
}

# add three
addThree "$1"
