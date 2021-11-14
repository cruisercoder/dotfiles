#!/bin/bash -ex

VERSION=3.8.10

mkdir -p out && cd out
curl -OL https://www.python.org/ftp/python/$VERSION/Python-$VERSION.tgz
tar -zxvf Python-$VERSION.tgz
cd Python-$VERSION

./configure --prefix=$HOME/.local

CORES=$(grep -c ^processor /proc/cpuinfo 2>/dev/null || sysctl -n hw.ncpu)
make -j$CORES
make install

