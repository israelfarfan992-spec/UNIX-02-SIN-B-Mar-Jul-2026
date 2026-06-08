#!/bin/bash

ls -l > /dev/null
echo "The exit code  of the ls command was: $?"

lzl 2> /dev/null
echo "the exit code of the non-existing lzl command was: $?"

echo "exit code it 223"
exit 223