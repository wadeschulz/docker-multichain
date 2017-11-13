FROM ubuntu:16.04

RUN apt-get -qqy update && apt-get -qqy install vim wget
RUN wget https://www.multichain.com/download/multichain-1.0.2.tar.gz
RUN tar -xvzf multichain-1.0.2.tar.gz && rm -rf multichain-1.0.2.tar.gz
RUN mv multichain-1.0.2/multichaind multichain-1.0.2/multichain-cli multichain-1.0.2/multichain-util /usr/local/bin

EXPOSE 8570
EXPOSE 8571
