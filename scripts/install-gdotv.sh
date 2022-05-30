#!/bin/bash -x

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]:-$0}"; )" &> /dev/null && pwd 2> /dev/null; )";

mkdir -p $SCRIPT_DIR/../tmp && \
if [ ! -f $SCRIPT_DIR/../tmp/gdotv.deb ]; then
  curl -LO https://download.gdotv.com/binaries/gdotv.deb && \
  mv gdotv.deb $SCRIPT_DIR/../tmp/ 
fi && \
sudo dpkg -i $SCRIPT_DIR/../tmp/gdotv.deb


