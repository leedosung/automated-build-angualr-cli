FROM ubuntu:16.04
MAINTAINER CHeKT <ldsung@udptechnology.com>

RUN apt-get update -y
RUN apt-get install build-essential -y
RUN apt-get install curl -y
RUN apt-get install wget -y
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - && apt-get install -y nodejs
RUN npm install -g @angular/cli
RUN npm install -g gulp

RUN mkdir -p /app
WORKDIR /app
ADD ./default_package/package.json ./package.json
RUN npm install
