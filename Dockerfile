FROM alpine:3.4

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

LABEL \
    org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.docker.dockerfile="/Dockerfile" \
    org.label-schema.license="Apache License 2.0" \
    org.label-schema.name="smizy/redis" \
    org.label-schema.url="https://github.com/smizy" \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.vcs-type="Git" \
    org.label-schema.version=$VERSION \
    org.label-schema.vcs-url="https://github.com/smizy/docker-redis"

ENV REDIS_DATA_DIR  /var/lib/redis

RUN set -x \
    && apk upgrade \
    && apk --no-cache add  \
        --repository http://dl-cdn.alpinelinux.org/alpine/edge/main/ \
        redis \
        su-exec \
    ## user/dir/permission
    && adduser -D -g '' -s /sbin/nologin -u 1000 docker \
    && mkdir -p ${REDIS_DATA_DIR} \
    && chown -R redis:redis ${REDIS_DATA_DIR} 

COPY entrypoint.sh  /usr/local/bin/

VOLUME ["${REDIS_DATA_DIR}"]

EXPOSE 6379

ENTRYPOINT ["entrypoint.sh"]
CMD ["redis-server", "/etc/redis.conf", "--daemonize", "no"] 