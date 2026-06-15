#!/bin/bash                                 
# Use the bash shell to run this script
for file in example_file*; do               # Loop over each file whose name starts with "example_file"
 if [[ "${file}" == "example_file1" ]]; then  # If the current filename is exactly "example_file1"
 echo "Skipping the first file."            # Print a message saying this file is skipped
 continue                                   # Skip this iteration and move to the next file
 fi                                         # End the if statement
 echo "${RANDOM}" > "${file}"               # Write a random number into the current file
done                                        # End the loop