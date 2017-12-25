#!/bin/bash

echo "rpcuser=$CHAIN_RPC_USER" > /root/.multichain/$CHAIN_NAME/multichain.conf
echo "rpcpassword=$CHAIN_RPC_PASSWORD" >> /root/.multichain/$CHAIN_NAME/multichain.conf
echo "rpcallowip=$CHAIN_RPC_IP" >> /root/.multichain/$CHAIN_NAME/multichain.conf

multichaind $CHAIN_NAME@$CHAIN_MASTER:$CHAIN_NET_PORT
