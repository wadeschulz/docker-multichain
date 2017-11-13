FROM ubuntu:16.04

RUN apt-get -qqy update && apt-get -qqy install \
	git \
	libsqlite3-dev \
	python-dev \
	python-pip \
	sqlite3\
	vim \
	wget

RUN wget https://www.multichain.com/download/multichain-1.0.2.tar.gz
RUN tar -xvzf multichain-1.0.2.tar.gz && rm -rf multichain-1.0.2.tar.gz
RUN mv multichain-1.0.2/multichaind multichain-1.0.2/multichain-cli multichain-1.0.2/multichain-util /usr/local/bin

RUN yes | pip install --upgrade pip
RUN yes | pip install pycrypto

RUN git clone https://github.com/MultiChain/multichain-explorer.git
WORKDIR multichain-explorer

RUN python setup.py install

EXPOSE 8570
EXPOSE 8571
EXPOSE 2750