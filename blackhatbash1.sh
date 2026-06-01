#!/bin/bash -x
set -x

--snip--

set +x

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
#bash -r blackhatbash1.sh #This option creates a restricted bash shell, which restricts certain potentially dangerous commands.


#bash -n black


