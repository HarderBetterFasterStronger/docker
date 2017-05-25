FROM alpine:3.5
MAINTAINER SF <mrfinks@github.com>

RUN apk update && apk add --no-cache \
    bash \
    openssh \
    zip \
    git \
    && rm -rf ${RM_DIRS} /node-${VERSION}* /usr/share/man /tmp/* /var/cache/apk/*