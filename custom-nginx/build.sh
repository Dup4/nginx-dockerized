#! /bin/bash

# shellcheck disable=SC2086
docker build \
	--build-arg ENABLED_MODULES="ngx_http_substitutions_filter_module" \
	-t dup4/nginx:latest \
	. \
	-f ../docker-nginx/modules/Dockerfile
