FROM ubuntu:16.04
MAINTAINER CHeKT <ldsung@udptechnology.com>

RUN apt-get update -y
RUN apt-get install build-essential -y
RUN apt-get install curl -y
RUN apt-get install wget -y
RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash - && apte-get install -y nodejs

RUN mkdir -p /app
WORKDIR /app
ADD . /app

CMD ["pwd"]
