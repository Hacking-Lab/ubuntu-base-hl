#!/bin/bash

docker buildx build --platform linux/arm64,linux/amd64 -t hackinglab/ubuntu-base-hl:latest -f Dockerfile . --push
docker buildx build --platform linux/arm64,linux/amd64 -t hackinglab/ubuntu-base-hl:$1 -f Dockerfile . --push
docker buildx build --platform linux/arm64,linux/amd64 -t hackinglab/ubuntu-base-hl:$1.0 -f Dockerfile . --push
docker buildx build --platform linux/arm64,linux/amd64 -t hackinglab/ubuntu-base-hl:18.04 -f Dockerfile.18.04 . --push
docker buildx build --platform linux/arm64,linux/amd64 -t hackinglab/ubuntu-base-hl:22.04 -f Dockerfile.22.04 . --push
