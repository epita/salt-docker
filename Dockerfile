FROM alpine:latest

RUN apk add --no-cache \
    gcc \
    g++ \
    git \
    musl-dev \
    py2-pip \
    python2-dev \
    py2-pygit2 \
    py2-zmq

RUN pip install timelib salt

COPY salt-master /usr/local/bin/salt-master

CMD ["/usr/local/bin/salt-master", "--log-level=info"]
