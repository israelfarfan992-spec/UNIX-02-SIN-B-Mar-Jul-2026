sudo upt update // Update the package lists for upgrades and new packages
sudo apt upgrade // Upgrade the installed packages to their latest versions
sudo apt install parted // Install the parted package, which is a disk partitioning tool
sudo parted -l && echo -e "\n\n" && lsblk -f && echo -e "\n---\n" // List the partitions and their file systems, and separate the output with newlines and a separator
[ -d /sys/firmware/efi ] && echo "UEFI" || echo "BIOS" // Check if the system is booted in UEFI mode or Legacy BIOS mode and print the result
