#!/bin/bash

# Script de ejemplo con comandos básicos de UNIX.
# Cada línea tiene un comentario que indica su propósito.

# Lista el contenido del directorio actual.
ls

# Lista el contenido del subdirectorio "Documents" dentro del directorio actual.
# Si no existe, mostrará un error.
ls Documents

# Lista el contenido del directorio actual en formato largo/detallado.
# Incluye permisos, propietario, tamaño y fecha de modificación.
ls -l

# Lista el contenido en orden inverso (alfabéticamente de Z a A).
ls -r

# Lista el contenido en formato largo y en orden inverso.
# Es equivalente a `ls -rl`.
ls -l -r

# Lista el contenido en formato largo y en orden inverso usando la forma abreviada.
ls -rl

# Ejecuta aptitude con el nombre de paquete "moo".
# Esto es un ejemplo; es muy probable que no exista el paquete "moo".
# Además, aptitude puede no estar instalado en este sistema.
aptitude moo

# Ejecuta aptitude con información de versión breve.
aptitude -v moo

# Ejecuta aptitude con información de versión más detallada.
aptitude -vv moo

# Ejecuta aptitude con información de versión aún más detallada.
aptitude -vvv moo

# Muestra el directorio actual de trabajo.
pwd

# Cambia al subdirectorio "Documents" relativo al directorio actual.
# Si no existe, el comando fallará.
cd Documents

# Cambia al directorio absoluto "/home/sysadmin".
# Este directorio puede no existir en todos los sistemas.
cd /home/sysadmin

# Muestra el directorio actual luego de cambiar de directorio.
pwd

# Cambia de nuevo al subdirectorio "Documents" relativo al directorio actual.
# Esto depende de que el directorio actual sea "/home/sysadmin" y contenga "Documents".
cd Documents

# Cambia al subdirectorio "School/Art" dentro de "Documents".
cd School/Art

# Muestra el directorio actual luego del cambio de directorio.
pwd

# Sube un nivel al directorio padre.
cd ..

# Cambia al directorio home del usuario actual usando la variable tilde.
cd ~

# Lista el contenido del directorio home actual.
ls
 # Listar el contenido del directorio home del usuario actual.    
ls -l /var/log/ # Listar el contenido del directorio /var/log con detalles.
ls -lt /var/log # Listar el contenido del directorio /var/log ordenado por fecha de modificación (más reciente primero).
ls -l -S /var/log # Listar el contenido del directorio /var/log ordenado por tamaño (más grande primero).
ls -lSr /var/log # Listar el contenido del directorio /var/log ordenado por tamaño (más pequeño primero).
ls -r /var/log # Listar el contenido del directorio /var/log en orden inverso (alfabéticamente de Z a A).
su  - # Cambia al usuario root. Se te pedirá la contraseña de root.
exit # Salir de la sesión de root y volver al usuario anterior.
sl # Este comando es un juego que muestra un tren en la terminal. No es un comando estándar y puede no estar instalado.
sudo sl # Ejecuta el comando "sl" con privilegios de superusuario. Si "sl" no está instalado, mostrará un error.
cd ~/Documents # Cambia al directorio "Documents" dentro del directorio home del usuario actual.ls -l hello.sh  
cd ~/Documents # Cambia al directorio "Documents" dentro del directorio home del usuario actual.
ls -l hello.sh  # Lista el archivo "hello.sh" con detalles. Si el archivo no existe, mostrará un error.
ls -l hello.sh  # Lista el archivo "hello.sh" con detalles. Si el archivo no existe, mostrará un error.
./hello.sh # Intenta ejecutar el script "hello.sh". Si no tiene permisos de ejecución, mostrará un error.
chmod u+x hello.sh # Agrega permisos de ejecución para el propietario del archivo "hello.sh".
./hello.sh # Ejecuta el script "hello.sh" nuevamente, ahora con permisos de ejecución.
ls -l # Lista el archivo "hello.sh" con detalles para verificar los permisos.
sudo chown root hello.sh  # Cambia el propietario del archivo "hello.sh" a root. Esto requerirá privilegios de superusuario.
ls -l hello.sh  # Lista el archivo "hello.sh" con detalles para verificar el cambio de propietario.
./hello.sh  # Intenta ejecutar el script "hello.sh" como usuario normal. Si el propietario es root y no tiene permisos de ejecución para otros, mostrará un error.
sudo ./hello.sh #   Intenta ejecutar el script "hello.sh" con privilegios de superusuario. Si el propietario es root y tiene permisos de ejecución para el propietario, esto debería funcionar.
cat animals.txt # Muestra el contenido del archivo "animals.txt". Si el archivo no existe, mostrará un error.
cat alpha.txt # Muestra el contenido del archivo "alpha.txt". Si el archivo no existe, mostrará un error.
head alpha.txt # Muestra las primeras 10 líneas del archivo "alpha.txt". Si el archivo tiene menos de 10 líneas, mostrará todo el contenido.
tail alpha.txt# Muestra las últimas 10 líneas del archivo "alpha.txt". Si el archivo tiene menos de 10 líneas, mostrará todo el contenido.
head -n 5 alpha.txt  # Muestra las primeras 5 líneas del archivo "alpha.txt". Si el archivo tiene menos de 5 líneas, mostrará todo el contenido.
tail -n 5 alpha.txt # Muestra las últimas 5 líneas del archivo "alpha.txt". Si el archivo tiene menos de 5 líneas, mostrará todo el contenido.
cp /etc/passwd . # Copia el archivo "/etc/passwd" al directorio actual. Si el archivo de destino ya existe, lo sobrescribirá.
ls # Lista el contenido del directorio actual para verificar que "passwd" ha sido copiado.
