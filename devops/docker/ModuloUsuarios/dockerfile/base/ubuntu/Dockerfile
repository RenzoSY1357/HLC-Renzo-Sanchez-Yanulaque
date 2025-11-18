FROM ubuntu
ARG USUARIO
ARG PASSWORD
RUN apt update && apt install -yq --no-install-recommends \
    apache2 \
    nano \
    curl \
    net-tools iputils-ping
#ARGUMENTS, define 2 variables de tiempo de compilacion 
#,se pueden pasar las variables usando --build-arg USUARIO=tu_usuario cuando se ejecute docker build
# RUN useradd -rm -d /home/renzo -s /bin/bash renzo

# delegar la responsabilidad de la configuracion de las imagenes a los scripts llamados Entypoints (script de inicio para un contenedor)

# mantener vivo el contenedor (esto es una instruccion que se ejecuta en primer plano), basicamente, un comando infinito
# CMD tail -f /dev/null
# CMD: CoManDo; '-f': follow, sin follow, solo se ejecuta 1 vez, no se mantiene
# tail, es de Unix/Linux, significa cola, basicamente, lee (es como un cat) la ultima parte de un archivo
# /dev/null: es un archivo especial de Unix, se le conoce como el agujero negro o el "dispositivo nulo", siempre esta vacio
# por definicion, tail intenta leerlo, y se cierra, pero con -f (flow) lo lee indefinidamente, ya que no hay nada ahi

# Dockerfile va a copiar mis entrypoint que van a estar en mi directorio admin que van a estar dentro de mi contenedor, 
# que van a estar o vien en /root/admin o en el directio bin/admin


RUN mkdir -p /root/base/ubuntu/admin
# Ejecuta el comando durante la construccion de la imagen
# (-p): crea los directorios padres si no existen

#directorio actual dentro del contenedor
WORKDIR /root/base/ubuntu/admin
# Cambia el directorio de trabajo dentro del contenedor
# A partir de aqui, cualquier comando que se ejecute lo hara desde este directorio

# 1 . --> es referente al contexto en docker compose
# 2 . --> es referente al WORKDIR dentro del contenedor
# Copia archivos/directorios del contexto local (en este caso admin) al sistema de archivos del contenedor
COPY ./dockerfiles/base/ubuntu/admin .
    # (path) contexto local         (.) destino, "es el directorio de trabajo actual, se modifico en WORKDIR"

RUN chmod o+x ./start.sh
# Ejecuta el comando chmod(change mode), añade permisos de de ejecucion(+x) a los demas usuarios del sistema(o)(no al grupo(g), ni usuario admin(u))

# script de aranque para crear la iso y ejecutar el contendor
ENTRYPOINT [ "./start.sh" ]


# COMMAND: Comandos para construir una imagen docker
#   docker pull origin master
#   docker compose down -rmi all < (rmi): remove images
#   docker compose up -d --build < (-d): detached: ejecuta los contenedores en segundo plano
#                                < (--build): fuerza la reconstruccion de las imagenes antes de levantar los servicios
#   docker exec -it nombreContenedor bash < (exec): ejecuta un comando en docker
#                                         < (-t): crea y asigna una pseudo-terminal
#                                         < (-i): habilita interactuar con la terminal
#   cat /etc/passwd


