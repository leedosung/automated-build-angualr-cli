FROM ubuntu:16.04
MAINTAINER CHeKT <ldsung@udptechnology.com>

RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y curl
RUN apt-get install -y python -y && apt-get install -y python-pip
RUN pip install awscli
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - && apt-get install -y nodejs
RUN npm install -g @angular/cli@1.0.0-rc.2
RUN npm install -g gulp

RUN mkdir -p /app
WORKDIR /app
ADD ./default_package/package.json ./package.json
RUN npm install
