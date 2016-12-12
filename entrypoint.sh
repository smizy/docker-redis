#!/bin/sh

set -eo pipefail

if  [ "$1" == "redis-server" ]; then
    shift
    exec su-exec redis redis-server $@
fi

exec "$@"