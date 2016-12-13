#!/bin/sh

set -e

# first arg is `-f` or `--some-option`
# or first arg is `something.conf`
if [ "${1#-}" != "$1" ] || [ "${1%.conf}" != "$1" ]; then
	set -- redis-server "$@"
fi

# allow the container to be started with `--user`
if [ "$1" = 'redis-server' -a "$(id -u)" = '0' ]; then
    shift

	chown -R redis "${REDIS_DATA_DIR}"
    cd "${REDIS_DATA_DIR}"

	exec su-exec redis redis-server "$@" --protected-mode no
fi

exec "$@"