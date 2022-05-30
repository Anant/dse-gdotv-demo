#!/bin/bash -x

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]:-$0}"; )" &> /dev/null && pwd 2> /dev/null; )";

PATH_TO_DSE_GRAPH_BOOK_DIR=$1


if [[ -z "$PATH_TO_DSE_GRAPH_BOOK_DIR" ]]; then
  echo "Must provide path to dse graph book repo as arg" 1>&2
  exit 1
fi
#PATH_TO_EXAMPLE_DATA_SCRIPT=$PATH_TO_DSE_GRAPH_BOOK_DIR/data/load_all.sh
PATH_TO_EXAMPLE_DATA_SCRIPT=$PATH_TO_DSE_GRAPH_BOOK_DIR/data/ch4/ch4_load.sh

export DSBULK_PATH=$SCRIPT_DIR/../tmp/dsbulk/dsbulk-1.9.0
bash $PATH_TO_EXAMPLE_DATA_SCRIPT

