#!/bin/bash -x
#this option prints all coomands and their arguments
#!/bin/bash -r 
#this option prints all commands and their arguments after expansion in restricted mode
#bash -n script.sh  this option checks the syntax of the script without executing it

bash --version
env 

echo ${SHELL}
echo ${RANDOM}
echo ${UID}
echo ${OSTYPE}

ps -ef
df --human-readable #df -h

chmod 777 blackhatbash1.sh
./blackhatbash1.sh
bash -r blackhatbash1.sh #This option creates a restricted bash shell, which restricts certain potentially dangerous commands.


bash -n black


