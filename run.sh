#!/bin/bash
set -xmET
[ -z "${REMOTE_SERVICE}" ] || [ -z "${EXPORTED_PORT}" ] && exit  1

sed -i \
    "s/{{ REMOTE_SERVICE }}/${REMOTE_SERVICE}/g" \
    /etc/nginx/nginx.conf

sed -i \
    "s/{{ EXPORTED_PORT }}/${EXPORTED_PORT}/g" \
    /etc/nginx/nginx.conf

nginx -t && \
    exec nginx -g "daemon off;" &