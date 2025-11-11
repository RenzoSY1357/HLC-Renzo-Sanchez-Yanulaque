FROM ubuntu
ARG USUARIO #ARGUMENTS, define 2 variables de tiempo de compilacion
ARG PASSWORD #,se pueden pasar las variables usando --build-arg USUARIO=tu_usuario cuando se ejecute docker build
RUN apt update && apt install -yq --no-install-recommends \
    apache2 \
    nano \
    curl \
    net-tools iputils-ping
RUN useradd -rm -d /home/renzo -s /bin/bash renzo

# mantener vivo el contenedor (esto es una instruccion que se ejecuta en primer plano)
CMD [ "tail", "-f", "/dev/null"] # basicamente, un comando infinito
# CMD: CoManDo; '-f': follow, sin follow, solo se ejecuta 1 vez, no se mantiene
# tail, es de Unix/Linux, significa cola, basicamente, lee (es como un cat) la ultima parte de un archivo
# /dev/null: es un archivo especial de Unix, se le conoce como el agujero negro o el "dispositivo nulo", siempre esta vacio
# por definicion, tail intenta leerlo, y se cierra, pero con -f (flow) lo lee indefinidamente, ya que no hay nada ahi
