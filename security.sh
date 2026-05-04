id # Displays the current user's ID and group memberships
cat /etc/passwd | head -10 # Displays the first 10 lines of /etc/passwd, which contains system user information 
import crypt # Imports the crypt module, which provides functions for hashing passwords
password = 'micontraseña123'
salt1 = crypt.mksalt(crypt.METHOD_SHA512) # Generates a random salt using the SHA-512 method
salt2 = crypt.mksalt(crypt.METHOD_SHA512) # Generates another random salt using the SHA-512 method
hash1 = crypt.crypt(password, salt1) # Hashes the password using the first salt
hash2 = crypt.crypt(password, salt2) # Hashes the password using the second
print('salt1:', salt1) # Prints the first salt
print('hash1:', hash1 [:50]) # Prints the first hash
print()
print('salt2:', salt2) # Prints the second salt
print('hash2:', hash2 [:50]) # Prints the second hash
print() 
print('son iguales?', hash1 == hash2) # Compares the two hashes and prints whether they are the same or not
cat/etc/group | head -10 # Displays the first 10 lines of /etc/group, which contains system group information
id -u # Displays the current user's UID (User ID)
id -g # Displays the current user's GID (Group ID)
id -G # Displays the current user's group memberships (all GIDs)
cat  /etc/group | grep codespace   # Searches for the group named "codespace" in the /etc/group file and displays its information
cat /etc/gshadow # Searches for the group named "codespace" in the /etc/gshadow file, which contains secure group information, and displays its information
mkdir ~/proyecto_unix/ # Creates a new directory named "proyecto_unix" in the current user's home directory
ls -la ~/proyecto_unix/ # Lists the contents of the "proyecto_unix" directory in long format, showing hidden files as well