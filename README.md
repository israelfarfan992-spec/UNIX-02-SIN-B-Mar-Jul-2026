**kernel linux** - el nuclieo del sistema operativo 
**busybox** - proporciona las utilidades basicas de unix (ls pwd, vi , etc.) en un solo binario 
**sislinux** - el bootloader que carga todo al arrancar 

sudo apt update
sudo apt upgradde
sudo apt install -y git vim make gcc libncurses-dev flex bison bc cpio libelf-dev libssl-dev syslinux dosfstools qemu-system-x86

para que sirve cada paquete 
`qcc`,`make`- complicacion del kernel y busy box
`libncurses-dec`- menus interactivos de configuracion (`menuconfig`)    
`flex`,`bison`, `bc` - requeridos por el proceso de build del kernel
`cpio`- para crear el initramsfs
`libelf-dev`, `libssl-dev`- dependencias del kernel 
`syslinu`- el bootloader
`dosfstools`- para crear el filesystem FAT 
`qemu-syste,-x86`- para probar la imagen sin nesecidad de hardward real

git clone --depth 1 https://github.com/torvalds/linux.git
cd linux