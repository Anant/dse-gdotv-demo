#!/bin/bash -x

SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]:-$0}"; )" &> /dev/null && pwd 2> /dev/null; )";



docker cp $SCRIPT_DIR/../groovy-schemas/ch4_schema.groovy gdotv-dse:/tmp
docker exec gdotv-dse dse gremlin-console -e /tmp/ch4_schema.groovy


