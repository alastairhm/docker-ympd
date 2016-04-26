FROM ubuntu:precise

MAINTAINER Alastair Montgomery "alastair@montgomery.me.uk"


RUN apt-get -qq -y update && \
    apt-get -qq -y install git cmake libmpdclient-dev build-essential libssl-dev && \
    apt-get clean && \
    git clone https://github.com/notandy/ympd && \
    mkdir -p ./ympd/build && \
    cd ./ympd/build && \
    cmake .. -DCMAKE_INSTALL_PREFIX_PATH=/usr && \
    make

EXPOSE 8080

CMD ["/bin/sh /ympd/build/ympd -h mpdhost"]
