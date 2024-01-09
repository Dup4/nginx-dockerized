#! /bin/bash

CUR_DIR="$(dirname "$(realpath "${BASH_SOURCE[0]}")")"

echo "COPY geoip2-data /etc/geoip2-data" >>"${CUR_DIR}"/../docker-nginx/modules/Dockerfile
