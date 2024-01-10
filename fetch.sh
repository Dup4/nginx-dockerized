#! /bin/bash

CUR_DIR="$(dirname "$(realpath "${BASH_SOURCE[0]}")")"

VERSION="$(cat "${CUR_DIR}/VERSION")"

TARGET="${CUR_DIR}/docker-nginx"
rm -rf "${TARGET}"
degit "nginxinc/docker-nginx#${VERSION}" "${TARGET}"
