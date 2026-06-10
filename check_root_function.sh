#!/bin/bash  
# Bash shell interpreter
check_if_root(){  # define a function named check_if_root

if [[ "${EUID}" -eq "0" ]]; then  # check if the effective user ID is 0 (root user)
 return 0  # return success status if current user is root
 else
 return 1  # return non-zero status if current user is not root
 fi
}
is_root=$(check_if_root)  # call the function and store its return value in is_root
if [[ "${is_root}" -eq "0" ]]; then  # test whether the function returned 0
 echo "user is root!"  # print a message indicating root privileges
else
 echo "user is not root!"  # print a message indicating non-root user
fi

# useradd israli  # add a new user named israli (should be run as root, not part of the script logic)
# su israli  # switch to the new user israli
# bash check_root_function.sh  # run this script again as the new user to verify root check
