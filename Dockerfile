from ubuntu:trusty

RUN apt-get update -q && \
    apt-get install -y -q --no-install-recommends \
        cowsay \
        git \
        make

RUN ln -s /usr/games/cowsay /usr/bin
