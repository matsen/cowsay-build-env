FROM ubuntu:trusty

RUN apt-get update -q && \
    apt-get install -y -q --no-install-recommends \
        ca-certificates \
        cowsay \
        git \
        make

RUN ln -s /usr/games/cowsay /usr/bin

CMD git clone https://github.com/matsen/p-neq-np.git && \
    cd p-neq-np && \
    make
