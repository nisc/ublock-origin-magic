#!/bin/bash

# Combine all uBlock Origin filter files into a single import file
# Output: all-filters-for-import.txt

output_file="all-filters-for-import.txt"

# Clear the output file
> "$output_file"

# Get all .txt files in the filters directory
filter_files=(filters/*.txt)

# Process each filter file
for i in "${!filter_files[@]}"; do
    file="${filter_files[$i]}"

    # Add the file content (remove trailing empty lines)
    awk 'NF {p=1} p' "$file" >> "$output_file"

    # Add two empty lines between files (but not after the last file)
    if [ $i -lt $((${#filter_files[@]} - 1)) ]; then
        echo "" >> "$output_file"
        echo "" >> "$output_file"
    fi
done

echo "Combined $((${#filter_files[@]})) filter files into $output_file"