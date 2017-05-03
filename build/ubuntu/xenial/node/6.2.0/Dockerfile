FROM sfinkel/docker:build.ubuntu.xenial.base
MAINTAINER SF <mrfinks@github.com>

RUN curl https://deb.nodesource.com/node_6.x/pool/main/n/nodejs/nodejs_6.2.0-1nodesource1~xenial1_amd64.deb > node.deb \
 && dpkg -i node.deb \
 && rm node.deb

RUN npm install -g pangyp\
 && ln -s $(which pangyp) $(dirname $(which pangyp))/node-gyp\
 && npm cache clear\
 && node-gyp configure || echo ""

#Install yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \ 
 && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
 && apt-get update && apt-get install -y yarn \
 && echo 'export PATH="$PATH:`yarn global bin`"' >> ~/.bashrc \
 && echo 'export PATH="$PATH:`yarn global bin`"' >> ~/.bash_profile \
 && echo 'export PATH="$PATH:`yarn global bin`"' >> ~/.zshrc

 RUN apt-get update \
 && apt-get upgrade -y --force-yes

 RUN rm -rf /var/lib/apt/lists/*;