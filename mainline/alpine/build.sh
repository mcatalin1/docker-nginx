#!/usr/bin/env bash

NGINX_VERSION=1.15.8
OS=alpine
OS_VERSION=3.9
NAME=shifashi/nginx-vts
TAG="$NAME:$NGINX_VERSION-$OS-$OS_VERSION"

echo "building: $TAG"
docker build -t $TAG .

docker push $TAG

docker images | grep nginx
