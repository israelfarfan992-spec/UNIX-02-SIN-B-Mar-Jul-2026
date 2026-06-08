#! /bin/bash 

SCRIP_NAME="${0}"
TARGET="${1}"

echo "Running the script ${SCRIP_NAME}"
echo "Pinging the target:${TARGET}"
ping "${TARGET}"
