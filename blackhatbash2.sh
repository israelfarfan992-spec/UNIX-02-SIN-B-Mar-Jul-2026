#!/bin/bash
set -x
mkdir mydirectory
touch mydirectory/myfile
ls -l mydirectory
#bash -x blackhatbash2.sh this ejecute the archives on blackhatbash2.sh with the -x option, which enables debugging and prints each command before executing it. This can be useful for troubleshooting and understanding the flow of the script.
#+ mkdir mydirectory
#+ touch mydirectory/myfile
#+ ls -l mydirectory
#total 0
#-rw-rw-rw- 1 root root 0 jun  1 13:22 myfile
#bash -n blackhatbash2.sh no errors and that means the syntax is correct. The -n option checks the syntax of the script without executing it.
set +x
#+ set -x
#+ mkdir mydirectory
#mkdir: cannot create directory ‘mydirectory’: El fichero ya existe
#+ touch mydirectory/myfile
#+ ls -l mydirectory
#total 0
#-rw-rw-rw- 1 root root 0 jun  1 13:23 myfile
#+ set +x
#set -x start debugin mode and sett +x stop debug mode, so the commands between set -x and set +x will be printed before execution, while the commands after set +x will not be printed. This allows you to control which parts of the script are in debug mode and which parts are not.   