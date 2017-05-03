FROM ubuntu:xenial
MAINTAINER SF <mrfinks@github.com>

RUN apt-get update \
 && apt-get install -y --force-yes --no-install-recommends\
      apt-transport-https \
      ssh-client \
      build-essential \
      curl \
      ca-certificates \
      git \
      libicu-dev \
      'libicu[0-9][0-9].*' \
      lsb-release \
      python-all \
      rlwrap \
      zip \
      bash \
 && rm -rf /var/lib/apt/lists/*;

#Install Iron CLI
RUN curl -sSL http://get.iron.io/cli | sh

RUN rm -rf /var/lib/apt/lists/*;



