#!/bin/bash  
#Bash shell interpreter
USER_INPUT="${1}"  # assign the first positional argument to USER_INPUT
if [[ -z "${USER_INPUT}" ]]; then  # check whether USER_INPUT is empty
 echo you must provide an argument!  # print error message when no argument is provided
 exit 1  # exit the script with status 1 (error)
fi  # end of first if
if [[ -f "${USER_INPUT}" ]]; then  # if USER_INPUT is a regular file
    echo "${USER_INPUT} is a file"  # print that it is a file
 elif [[ -d "${USER_INPUT}" ]]; then  # else if USER_INPUT is a directory
 echo "${USER_INPUT} is a directory"  # print that it is a directory
else  # otherwise
 echo "${USER_INPUT} is not a file or a directory"  # report that it is neither file nor directory
fi  # end of second if
