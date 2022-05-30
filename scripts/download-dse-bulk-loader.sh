#!/bin/bash -x

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]:-$0}"; )" &> /dev/null && pwd 2> /dev/null; )";

mkdir -p $SCRIPT_DIR/../tmp && \
if [ ! -f $SCRIPT_DIR/../tmp/dsbulk-distribution-1.9.0.zip ]; then
  curl -LO https://github.com/datastax/dsbulk/releases/download/1.9.0/dsbulk-distribution-1.9.0.zip && \
  mv dsbulk-distribution-1.9.0.zip $SCRIPT_DIR/../tmp/ 
fi && \
unzip $SCRIPT_DIR/../tmp/dsbulk-distribution-1.9.0.zip -d $SCRIPT_DIR/../tmp/dsbulk && \
echo "done."


