#!/bin/bash

newUser(){
    useradd -rm -d /home/renzo -s /bin/bash renzo
    echo "renzo:1234" | chpasswd
    echo "Bienvenido Renzo ..." > /home/renzo/bienvenido.txt
}

main(){
    newUser
    tail -f /dev/null
}

main
