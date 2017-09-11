FROM ubuntu:16.04
MAINTAINER CHeKT <ldsung@udptechnology.com>

RUN apt-get update -y
RUN apt-get install build-essential -y
RUN apt-get curl -y
RUN apt-get wget -y

