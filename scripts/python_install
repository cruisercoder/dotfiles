#!/bin/bash -ex

VERSION=3.8.10

unamestr=`uname`

mkdir -p out && cd out
curl -OL https://www.python.org/ftp/python/$VERSION/Python-$VERSION.tgz
tar -zxvf Python-$VERSION.tgz
cd Python-$VERSION


if [[ "$unamestr" == 'Darwin' ]]; then
# for mac with brew installed 
./configure \
  --prefix=$HOME/.local \
  --with-openssl=$(brew --prefix openssl)
elif [[ "$unamestr" == 'Linux' ]]; then
./configure \
  --prefix=$HOME/.local 
fi

CORES=$(grep -c ^processor /proc/cpuinfo 2>/dev/null || sysctl -n hw.ncpu)
make -j$CORES
make install

