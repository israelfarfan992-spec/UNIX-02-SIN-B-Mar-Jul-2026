#! /bin/bash

FILENAME="flow_control_whit_if.txt"

if  [[  !  -f "$ {FILENAME} "  ]];  then
   touch "$ {FILENAME} " 
fi 
