#!/usr/bin/env bash

set -e
set -x

sudo apt-get remove -y ccache
sudo apt-get install -y autoconf

./autogen.sh && \
  ./configure && \
  make -j && \
  sudo make install
