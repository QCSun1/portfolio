#!/bin/bash

# test the existence of a list of files

# read the file names in the text
while IFS= read -r line; do
    # skip the empty lines and spaces (ref: ChatGPT)
    line=$(echo "$line" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')
    if [ -n "$line" ]; then
        # search for the file names
        if [ -f "$line" ]; then
            echo "$line - That file exists"
        elif [ -d "$line" ]; then
            echo "$line - That's a directory"
        else
            echo "$line - I don't know what that is!"
        fi
    fi
done < "$1"

exit 0