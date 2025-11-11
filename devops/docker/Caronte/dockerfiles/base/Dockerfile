FROM ubuntu
ARG USUARIO
ARG PASSWORD
RUN apt update && apt install -yq --no-install-recommends \
    apache2 \
    nano \
    curl \
    net-tools iputils-ping
CMD [ "tail" ]
