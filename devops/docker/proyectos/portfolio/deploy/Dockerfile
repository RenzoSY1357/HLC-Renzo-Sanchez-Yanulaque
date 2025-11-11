#partimos de una imagen base de ubuntu donde instalaremos apache, configuraremos y arrancaremos
FROM ubuntu 
ARG USUARIO
ARG PASSWORD
RUN apt update && apt install -yq --no-install-recommends \
     apache2 \
     nano \
     curl \
     net-tools iputils-ping

# *** Creacion de usuarios *****
# comandos interactivos (piden datos por terminal)
# compandos por lotes (datos los ponemos como parametrosl del comando)
RUN useradd -rm -d /home/${USUARIO} -s /bin/bash ${USUARIO}
RUN echo "${USUARIO}:${PASSWORD}" | chpasswd
RUN echo "Bienvenido ${USUARIO} a la empresa" > /home/${USUARIO}/hello.txt  
#debemos consultar el docker hub (imagen) para ver variables de entorno

#directorio de trabajo dentro del contenedor
WORKDIR /var/www/html

# el directorio . es relativo al contexto del Docker
COPY ./src . # lo saca del context
# basicamente esta copiando la carpeta src,"." significa aqui

EXPOSE 80 # Te vaisa que docker esta corriendo en el puerto 80
CMD apachectl -DFOREGROUND # Comando de arranque del contenidor
# Es importante que pongas -DFOREGROUND, para poner el servidor en primer plano
