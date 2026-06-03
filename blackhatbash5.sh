#!/bin/bash
touch test && touch test123

(ls; ps)
 
ls; ps; whoami

lzl || echo "el comando lzl fallo"

echo "uno" > file.txt

echo "dos" > file.txt

echo "uno-uno" >> file.txt

echo "tres" &> file1.txt
echo "tres" &>> file1.txt
ls -l / &> stdout_and_stderr.txt
lzl 2> error.txt
cat error.txt

cat < output.txt