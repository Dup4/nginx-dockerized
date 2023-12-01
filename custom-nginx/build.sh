#! /bin/bash

# shellcheck source=/dev/null
source "./env.sh"

docker build \
    --build-arg ENABLED_MODULES="${ENABLED_MODULES}" \
    -t dup4/nginx:latest \
    . \
    -f ../docker-nginx/modules/Dockerfile
