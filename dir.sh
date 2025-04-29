#!/bin/bash

folder="$1"

if [[ -d $folder ]]; then
    echo $(ls -la $folder)
else
    echo "folder does not exist: $1"
fi