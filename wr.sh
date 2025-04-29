#!/bin/bash

is_valid_number(){
    number="$1"

    REGEX_NUMBER="^-?[0-9]+$"
    # Verify number between 2 and 8 was passed
    if [[ $number =~ $REGEX_NUMBER && $number -ge 2 && $number -le 8 ]]; then
        return 0
    else
        return 1
    fi

}

text="$1"
folder_name="$2"
number="$3"

# validate input
if [[ -d $folder_name ]]; then
    echo "error: $folder_name already exists"
    exit 1
else
    if is_valid_number "$number" ; then
        echo $(mkdir $folder_name)
        for i in $(seq 1 $number); do
            echo $(echo "$text" >> "$folder_name/file$i.txt")
        done
    else
        echo "number must be between 2 and 8"
    fi
fi