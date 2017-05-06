FROM sfinkel/docker:build.ubuntu.xenial.base
MAINTAINER SF <mrfinks@github.com>

RUN apt-get update && apt-get install -y curl \
    && curl https://deb.nodesource.com/node_6.x/pool/main/n/nodejs/nodejs_6.10.2-1nodesource1~xenial1_amd64.deb > node.deb \
 	&& dpkg -i node.deb \
 	&& rm node.deb \
    && curl -sSL http://get.iron.io/cli | sh \
 	&& dpkg -i node.deb \
 	&& rm node.deb \
 	&& npm install -g pangyp \
 	&& ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp \
 	&& npm cache clear \
 	&& node-gyp configure || echo "" \
	&& npm install -g yarn \
	&& curl -sSL http://get.iron.io/cli | sh 
