FROM ubuntu:16.04
MAINTAINER CHeKT

RUN apt-get update
RUN apt-get install build-essential
RUN apt-get curl
RUN apt-get wget

