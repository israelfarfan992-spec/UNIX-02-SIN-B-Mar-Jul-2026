echo '#!/bin/sh' > hola.sh # Create a new shell script named hola.sh with the shebang line for sh
echo 'echo "Hola desde mi primer script"' >> hola.sh # Add a line to the script
cat hola.sh # Display the contents of the script to verify it was created correctly
./hola.sh # Execute the script to see the output "Hola desde mi primer script"
ls -l hola.sh # List the details of the hola.sh file
chmod +x hola.sh # Make the script executable
ls -l hola.sh # Verify that the execute permission has been added
./hola.sh # Run the script again to confirm it still works after changing permissions

ls /etc # List the contents of the /etc directory, which contains system configuration files

touch /etc/prueba.txt # Create a new file named prueba.txt in the /etc directory (this need sudo)
mkdir ~/mi_carpeta # Create a new directory named mi_carpeta in the user's home directory
apt install cowsay # Install the cowsay package, which is a fun command that generates ASCII art of a cow saying a message (this need sudo)