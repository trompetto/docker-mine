FROM ubuntu:16.04
MAINTAINER trompettokun

ENV DEBIAN_FRONTEND noninteractive
RUN		apt-get update -qq

RUN		apt-get install -qy automake autoconf pkg-config libcurl4-openssl-dev libssl-dev libjansson-dev libgmp-dev make g++ git

RUN		git clone https://github.com/trompetto/cpuminer-multi

RUN		cd cpuminer-multi &&\
		bash autogen.sh &&\
		bash configure &&\
		make

ADD entrypoint.sh /entrypoint.sh
RUN		chmod +x /entrypoint.sh

ENTRYPOINT	["/entrypoint.sh"]
