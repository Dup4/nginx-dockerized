#! /bin/bash

CUR_DIR="$(dirname "$(realpath "${BASH_SOURCE[0]}")")"

# shellcheck source=/dev/null
source "./env.sh"

docker build \
    --build-arg ENABLED_MODULES="${ENABLED_MODULES}" \
    -t dup4/nginx:latest \
    . \
    -f "${CUR_DIR}"/../docker-nginx/modules/Dockerfile
