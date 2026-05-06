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


#group add [options] groupname
#create a simple group 
sudo groupadd desarrolladores
sudo groupadd -g 2000 operaciones #GID especifc
#group of sistems (GID < 1000)
sudo groupadd --system servicios_web
grep "desarrolladores\|operaciones\|servicios_web" /etc/group 
grep -E "desarrolladores|operaciones|servicios_web" /etc/group 
#see principals opcions 
groupadd --help

#see the range of GIDs on sistem
grep "GID_MIN\|GID_MAX/|SYS_GID" /etc/login.defs
#the groups of system have minius gid of user
#on ubuntu usally:
#SYS_GID_MIN= 100
#SYS_GID_MAX= 999
#GID_MIN= 1000
#GID_MAX= 60000
#addgroup [options] groupname
#create groups whit addgroips
addgroup diseno
addgroup --gid 2100 marketing
sudo addgroup --system cache_web
#verifity
grep "diseno\|marketing\|cache_web" /etc/group
#see who groups permanently the actual user
groups
id
#add user in to group whit usermod(lowlevel)
sudo usermod -aG desarrolladores $USER
sudo usermod -aG diseno $USER
critic: the flag -a (append) its fundamental
whit no -a, usermod remplace all groups of user 
whit -a , add the new group whit no change the other groups of user
#verifity change whit /etc/group
grepp "desarrolladores\|diseno" /etc/group
#add user a group whit adduser(highlevel)
sudo adduser $USER operaciones
sudo adduser $USER marketing
#see the actual state
id $USER
grep $USER /etc/group
#create a temporal grou
sudo groupadd grupo_temporal
sudo usermod -aG grupo_temporal root
id $USER #have temporal_group
#now the error :usermod sin -a
sudo usermod -G desarooladores $USER
#this eliminathje all groups of user and add only desarrolladores
id $USER #only have desarrolladores
#restore
sudo usermod -aG diseno,marketing,grupo_temporal root
id root #have all groups again