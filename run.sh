#!/bin/bash

# Create the temp-files folder
folder_name="temp-files"
mkdir -p "$folder_name"

# Total number of files to create
total_files=1000000

# Write 1,000,000 files with names 1, 2, 3, 4, etc., each 2 bytes in size
for i in $(seq 1 $total_files); do
  file_name="${folder_name}/${i}"
  printf '\0\0' > "$file_name"
  
  # Display progress
  echo "Created file ${i} of ${total_files}"
done

# Print a message when it's done
echo "1,000,000 files with names 1, 2, 3, 4, etc., each 2 bytes in size, have been created in the temp-files folder."
