#!/bin/bash

sudo apt-get install aptitude 
echo "y"
sleep 1
sudo aptitude update
exho "y"
sleep 1
sudo aptitude install –with-recommends build-essential autotools-dev autoconf automake libcurl3 libcurl4-gnutls-dev git make cmake libssl-dev pkg-config libevent-dev libunbound-dev libminiupnpc-dev doxygen supervisor jq libboost-all-dev htop libmicrohttpd-dev 
cd bin
sudo sysctl -w vm.nr_hugepages=128

sudo ./xmr-stak-cpu
