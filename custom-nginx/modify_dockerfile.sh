#! /bin/bash

CUR_DIR="$(dirname "$(realpath "${BASH_SOURCE[0]}")")"

cp -a "${CUR_DIR}/modules"/* "${CUR_DIR}/../docker-nginx/modules/"
cp -a "${CUR_DIR}/geoip2-data" "${CUR_DIR}/../docker-nginx/modules/"
echo "COPY geoip2-data /etc/geoip2-data" >>"${CUR_DIR}"/../docker-nginx/modules/Dockerfile
