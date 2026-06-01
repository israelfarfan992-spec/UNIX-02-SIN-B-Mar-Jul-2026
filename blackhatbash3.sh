#! /bin/bash
book="black hat bash"
unset book
echo "${book}"
echo "The book's name is ${book}"
echo "The book's name is $book"

root_directory=$(ls -ld /)
echo "${root_directory}"
