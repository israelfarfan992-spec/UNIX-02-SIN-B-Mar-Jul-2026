ls -a  # list all files, including hidden ones
ls --all  # same as -a, using the long option
ls -l  # list files in long format
ls -h  # show file sizes in human-readable format
ls -l -a -h  # combine long format, all files, and human-readable sizes
ls -lah  # shorthand combination of -l, -a, and -h
mkdir -- -rf  # create a directory literally named -rf using -- to end option parsing
rm -rf example_folder  # remove example_folder recursively and forcefully
rm -- -rf  # remove a file named -rf
rmdir -- -rf  # remove an empty directory named -rf
git clone --depth 1 https://github.com/torvalds/linux.git  # clone repository with only the latest commit
ls --help  # show help for ls
man ls  # open the manual page for ls
man git-clone  # open the manual page for git-clone
chmod +x script.sh  # add execute permission for the owner of script.sh
chmod u+x script.sh  # add execute permission only for the user
chmod o-r script.sh  # remove read permission for others
chmod u+rw,go-rwx script.sh  # give user read/write and remove group/other permissions from script.sh
sudo echo "hola" > /etc/archivo_protegido  # attempt to write protected file, but redirection is not run under sudo
echo "hola" | sudo tee /etc/archivo_protegido > /dev/null  # write protected file with sudo via tee and discard output
echo "hola" | sudo tee /etc/archivo_protegido  # write protected file with sudo and print the output
cat /etc/archivo_protegido  # display the contents of the protected file
sudo sh -c 'echo "chao" > /etc/archivo_protegido'  # write protected file using a shell command run with sudo
sudo su -  # switch to the root user shell
echo "$HOME"  # print the current user's home directory
echo '$HOME'  # print the literal string $HOME without variable expansion
.  # source the current shell environment
umask --> 0022  # example showing the default umask syntax, not a valid command
touch archivo1  # create an empty file named archivo1
mkdir directorio1  # create a directory named directorio1
ls-l  # invalid command due to missing space; likely meant ls -l
sudo apt-get update  # update package lists
sudo apt-get upgrade  # upgrade installed packages
sudo apt-get install acl  # install the acl package
sudo chown -R $(whoami) .  # change ownership of the current directory recursively to the current user
sudo setfacl -bnR .  # remove all ACL entries recursively from the current directory
umask 077  # set the file creation mask for owner-only access
umask  # display the current umask value
touch secreto.txt  # create an empty file named secreto.txt
ls -l  # list files in long format
chown  # chown requires arguments: owner and file
oot can change it  # text note, not a valid command
chgrp  # chgrp requires arguments: group and file
whoami  # print the current username
echo "Hola" > mi_archivo  # write Hola into mi_archivo
ls -l mi_archivo  # list details for mi_archivo
sudo useradd -m -s /usr/bin/zsh luna  # create a new user luna with a home directory and zsh shell
sudo chown luna mi_archivo  # change owner of mi_archivo to luna
ls -l mi_archivo  # list details for mi_archivo again
groups  # display groups of the current user
newgrp grupo_test  # switch the current group to grupo_test
groupadd grupo_test  # create a new group named grupo_test
groups  # display current groups again
touch comun  # create an empty file named comun
ls -l comun  # list details for comun
sudo chown luna:codespace mi_archivo  # change owner to luna and group to codespace for mi_archivo
sudo usermod -aG luna $USER  # add the current user to the luna group
chown usuario:grupo fichero  # change ownership and group of fichero to usuario:grupo
mkdir -p proyecto/sub  # create the proyecto/sub directory structure
touch proyecto/readme proyecto/sub/datos  # create files within proyecto and proyecto/sub
sudo chown -R luna:grupo_test proyecto  # recursively change owner/group of proyecto
ls -lR proyecto  # recursively list contents of proyecto