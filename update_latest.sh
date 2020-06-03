#!/bin/bash

docker build \
    -t bermeitingerb/texlive:latest \
    --build-arg IMAGE="bermeitingerb/texlive:latest" \
    --no-cache \
    -f Dockerfile.latest \
    .
