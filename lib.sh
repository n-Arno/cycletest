#!/bin/sh
set -e

wget -m https://cpucycles.cr.yp.to/libcpucycles-latest-version.txt
version=$(cat cpucycles.cr.yp.to/libcpucycles-latest-version.txt)
wget -m https://cpucycles.cr.yp.to/libcpucycles-$version.tar.gz
tar -xzf cpucycles.cr.yp.to/libcpucycles-$version.tar.gz
cd libcpucycles-$version
./configure && make -j8 install
