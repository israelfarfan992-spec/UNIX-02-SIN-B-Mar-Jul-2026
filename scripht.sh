# Basic structure of a command in Linux
# command -> subcommand -> options -> arguments

# Examples of ls and its options
ls -a  # Lists all files, including hidden ones, using the short option -a
ls --all  # Same as -a, but using the long option --all
# In Linux many options have both short (-a) and long (--all) forms

ls -l  # Lists files in long format: permissions, owner, size, and date
ls -h  # Shows file sizes in human-readable format (KB, MB, GB)
ls -l -a -h  # Combines multiple options: long format, all files, and human-readable sizes
ls -lah  # Equivalent shorthand combination of -l, -a, and -h

# Use -- to indicate the end of options and allow names that start with a dash
# mkdir -rf .  # This example does not create a directory named "-rf" because mkdir treats -rf as options
mkdir -- -rf  # Creates a directory named "-rf"

# rm with options r (recursive) and f (force)
rm -rf example_folder  # Removes example_folder and its contents without confirmation
rm -- -rf  # Removes a file named "-rf" in the current directory
rmdir -- -rf  # Removes an empty directory named "-rf"

# Clone a repository with git
git clone --depth 1 https://github.com/torvalds/linux.git
# --depth 1 performs a shallow clone: only the latest commit is downloaded

# Command documentation and help
ls --help  # Shows brief help for ls with available options
man ls  # Opens the manual page for ls to see detailed information
man git-clone  # Opens the manual for git-clone; use /depth to search for the --depth option

# File permissions in Linux: user, group, and others
# Example: -rwxr-xr-- means:
#   - user: read, write, execute
#   - group: read, execute
#   - others: read only

# chmod examples for changing permissions
chmod +x script.sh  # Adds execute permission to script.sh for the owner based on the current mask
chmod u+x script.sh  # Adds execute permission only for the file owner
chmod o-r script.sh  # Removes read permission from others
chmod u+rw,go-rwx script.sh  # Gives read/write to owner and removes all permissions from group and others


sudo echo "hola" > /etc/archivo_protegido #does not work as expected because redirection runs before sudo.

echo "hola" | sudo tee /etc/archivo_protegido > /dev/null # This works because tee runs with sudo privileges and can write to the protected file.
cat /etc/archivo_protegido  # Verify the content of the protected file