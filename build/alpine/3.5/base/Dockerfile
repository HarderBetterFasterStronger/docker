FROM alpine:3.5
MAINTAINER SF <mrfinks@github.com>

RUN apk update && apk add --no-cache \
    curl \
    make \
    gcc \
    g++ \
    python \
    linux-headers \
    binutils-gold \
    gnupg \
    libstdc++ \
    bash \
    openssh \
    zip \
    && curl -sSL http://get.iron.io/cli | sh