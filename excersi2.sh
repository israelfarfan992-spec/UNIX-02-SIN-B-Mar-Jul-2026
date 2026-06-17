#!/bin/bash 
# Use bash shell interpreter
NAME="${1}" # First argument: name to record
DOMAIN="${2}" # Second argument: domain to ping
OUTPUT_FILE="results.csv" # Output file for results

# Check if the two expected arguments are set
if [[ -z "${NAME}" ]] || [[ -z "${DOMAIN}" ]]; then # If either NAME or DOMAIN is empty
  echo "You must provide two arguments to this script." # Show usage error
  echo "Example: ${0} mysite nostarch.com" # Show example command
  exit 1 # Exit with failure status
fi

# Write CSV header to the file
echo "status,name,domain,timestamp" > ${OUTPUT_FILE} # Create/overwrite output file with header

aif ping -c 1 "${DOMAIN}" &> /dev/null; then # Ping the domain once and hide output
  echo "success,${NAME},${DOMAIN},$(date)" >> "${OUTPUT_FILE}" # Append success row with timestamp
else
  echo "failure,${NAME},${DOMAIN},$(date)" >> "${OUTPUT_FILE}" # Append failure row with timestamp
fi