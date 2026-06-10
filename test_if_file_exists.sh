#! /bin/bash

FILENAME="flow_control_whit_if.txt"

if  [[  -f "$ {FILENAME} "  ]];  then
   echo "$ {FILENAME} already exist"
   exit 1
else
    touch "${FILENAME}"
fi
