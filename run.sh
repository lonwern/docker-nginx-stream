#!/bin/bash

[ -z "${REDIS_SERVER}" ] && exit  1

sed -i "s:{{ REDIS_SERVER }}:${REDIS_SERVER}:g" /etc/nginx/nginx.conf &&
    nginx -t && \
        exec nginx &