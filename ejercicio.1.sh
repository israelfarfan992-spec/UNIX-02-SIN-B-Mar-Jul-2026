echo '#!/bin/sh' > hola.sh # Create a new shell script named hola.sh with the shebang line for sh
echo 'echo "Hola desde mi primer script"' >> hola.sh # Add a line to the script
cat hola.sh # Display the contents of the script to verify it was created correctly
./hola.sh # Execute the script to see the output "Hola desde mi primer script"
ls -l hola.sh # List the details of the hola.sh file
chmod +x hola.sh # Make the script executable
