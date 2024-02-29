#!/bin/bash

# Iterate over each file in the directory
for file in *; do
    # Check if the item is a file
    if [[ -f "$file" ]]; then
        # Extract the date from the filename using sed
        date=$(echo "$file" | sed -n 's/.*\([0-9]\{8\}\).*/\1/p')
        # Proceed only if $date is not empty
        if [ ! -z "$date" ]; then
            # Create a directory with the date, if it doesn't exist
            if [ ! -d "$date" ]; then
                mkdir "$date"
            fi

            # Move the file into its corresponding directory
            mv "$file" "$date/"
        fi
    fi

done
