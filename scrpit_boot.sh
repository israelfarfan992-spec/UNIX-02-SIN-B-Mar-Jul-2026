cd // # Change directory to the root filesystem
cd /home/codespace // # Change directory to the /home/codespace directory
cd ~ // # Change directory to the user's home directory (tilde expansion)
cd $HOME // # Change directory to the user's home directory using the $HOME environment variable
mkdir proyecto // # Create a new directory named "proyecto"
cd proyecto // # Change directory to the newly created "proyecto" directory
ls -lai // # List all files and directories in the current directory with detailed information
total 12
925748 drwxr-xr-x 2 codespace codespace 4096 Apr  6 12:34 .
918515 drwxr-x--- 1 codespace codespace 4096 Apr  6 12:34 .. 
stat .// # Display detailed information about the current directory (.)
  File: .
  Size: 4096            Blocks: 8          IO Block: 4096   directory
Device: 0,45    Inode: 925748      Links: 2
Access: (0755/drwxr-xr-x)  Uid: ( 1000/codespace)   Gid: ( 1000/codespace)
Access: 2026-04-06 12:34:53.263949014 +0000
Modify: 2026-04-06 12:34:35.175948103 +0000
Change: 2026-04-06 12:34:35.175948103 +0000
 Birth: 2026-04-06 12:34:35.175948103 +0000
 #are diferrent ammount IO BLOCKS because each block is 4096 bytes and the directory itself takes up 4096 bytes, 
 #but it may also have additional blocks allocated for storing metadata or other information.
mkdir -p /tmp/prueba/sub1/tmp/prueba/sub2 // # Create a nested directory structure with the -p option to create parent directories as needed
stat /tmp/prueba // # Display detailed information about the /tmp/prueba directory
  File: /tmp/prueba
  Size: 4096            Blocks: 8          IO Block: 4096   directory
Device: 8,17    Inode: 393231      Links: 3
Access: (0756/drwxr-xrw-)  Uid: ( 1000/codespace)   Gid: ( 1000/codespace)
Access: 2026-04-06 12:52:38.508002665 +0000
Modify: 2026-04-06 12:52:38.508002665 +0000
Change: 2026-04-06 12:52:38.508002665 +0000
 Birth: 2026-04-06 12:52:38.508002665 +0000
man mkdir // # Display the manual page for the mkdir command to learn more about its options and usage 
 