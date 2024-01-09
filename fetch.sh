#! /bin/bash

CUR_DIR="$(dirname "$(realpath "${BASH_SOURCE[0]}")")"

VERSION="$(cat "${CUR_DIR}/VERSION")"

degit "nginxinc/docker-nginx#${VERSION}" docker-nginx
