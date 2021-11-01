#! /bin/bash

VERSION=1.21.3.1

# shellcheck disable=SC2086
docker build \
	--build-arg ENABLED_MODULES="ngx_http_substitutions_filter_module" \
	-t dup4/nginx:${VERSION} \
	. \
	-f ../docker-nginx/modules/Dockerfile
