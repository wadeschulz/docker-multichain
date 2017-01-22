FROM centos:7

RUN yum -y upgrade && yum -y install wget
RUN wget http://www.multichain.com/download/multichain-1.0-alpha-27.tar.gz
RUN tar -xvzf multichain-1.0-alpha-27.tar.gz && rm -rf multichain-1.0-alpha-27.tar.gz
WORKDIR multichain-1.0-alpha-27
RUN mv multichaind multichain-cli multichain-util /usr/local/bin