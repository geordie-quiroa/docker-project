#!/usr/bin/env bash
# Build image
docker build --tag=demolocal .
docker image ls
docker run -it demolocal bash