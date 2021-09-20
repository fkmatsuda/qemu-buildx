#!/bin/sh
docker run --rm --privileged multiarch/qemu-user-static --reset -p yes
docker buildx create --name builder --driver docker-container --use
docker buildx inspect --bootstrap
docker buildx install