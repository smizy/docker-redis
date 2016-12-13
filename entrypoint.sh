#!/bin/sh

set -e

if [ "${1:0:1}" = '-' ]; then
	set -- redis-server "$@"
fi

if  [ "$1" = "redis-server" ]; then
    shift
    exec su-exec redis redis-server --dir "${REDIS_DATA_DIR}" "$@"
fi

exec "$@"