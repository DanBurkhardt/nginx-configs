#!/bin/bash

## note: script assumes you are in the root of mutual-tls implementation

# project name for docker container
export NGINX_PROJ_NAME="mtls-strict-localhost-example"

# define absolute paths to map volumes
export NGINX_CONF="$(pwd)/nginx.conf"
export NGINX_SITES="$(pwd)/sites-available"
export NGINX_MTLS_DIR="$(pwd)/mtls/server"

# container configs
export NGINX_PORT=8006
export NGINX_NETWORK_NAME="$NGINX_PROJ_NAME-bridge"

# ensure a distinct network to segregate traffic
docker network create "$NGINX_NETWORK_NAME"

# run container and attach for debug log output
docker run \
    --name "$NGINX_PROJ_NAME" \
    --net "$NGINX_NETWORK_NAME" \
    -p $NGINX_PORT:$NGINX_PORT \
    -v $NGINX_SITES:/etc/nginx/sites-enabled \
    -v $NGINX_MTLS_DIR:/etc/nginx/mtls \
    -v $NGINX_CONF:/etc/nginx/nginx.conf \
    -it \
    nginx:latest

# see readme for testing via system browser