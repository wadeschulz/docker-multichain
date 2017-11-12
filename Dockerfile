FROM ubuntu:16.04

RUN apt-get -yyq update && apt-get -yyq install wget
RUN wget https://www.multichain.com/download/multichain-1.0.2.tar.gz
RUN tar -xvzf multichain-1.0.2.tar.gz && rm -rf multichain-1.0.2.tar.gz
WORKDIR multichain-1.0.2.tar.gz
RUN mv multichaind multichain-cli multichain-util /usr/local/bin

EXPOSE 8570
EXPOSE 8571
