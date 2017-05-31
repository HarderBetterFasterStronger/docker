FROM ubuntu:xenial
MAINTAINER SF <mrfinks@github.com>

RUN apt-get update \
 && apt-get install -y --force-yes --no-install-recommends \
      apt-transport-https \
      build-essential \
      ca-certificates \
      libicu-dev \
      'libicu[0-9][0-9].*' \
      lsb-release \
      python-all \
      rlwrap \
      bash \
      ssh-client \
      zip \
      git \
 && rm -rf /var/lib/apt/lists/*;
