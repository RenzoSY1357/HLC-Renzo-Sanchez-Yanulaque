#!/bin/bash
# ⬆ ruta de interprete

# Crea un nuevo usuario en el sistema
newUser(){
    useradd -rm -d /home/renzo -s /bin/bash renzo
    # (-r) crea un usuario del sistema
    # (-m) crea el directorio home del usuario
    # (-d) /home/renzo: define el directorio home del usuario
    # (-s) /bin/bash: define el shell predeterminado como Bash.
    # (renzo) nombre del usuario al crear
    
    echo "renzo:renzo" | chpasswd
    # (|) : pipe, ...redirije (la impresion de echo) "la contraseña" dentro del comando chpasswd
    # (chpasswd) : "change password" actualiza la contraseña mediante la entrada standar user:password
    echo "Bienvenido Renzo ..." > /home/renzo/bienvenido.txt
    # (>) : sobreescribe el contenido a bienvenido.txt
}

main(){
    newUser
    tail -f /dev/null
    # comando que se ejecuta indefinidamente para mantener al contendor vivo
    # (tail) > lee la ultima linea de un archivo
    # (-f) > follow, sigue el archivo y muestra nuevas lineas a medida que se agregan
    # (/dev/null) > carpeta de unix permanentemente vacia, creo que ya entiendes que sucede...
}

main
