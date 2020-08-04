#!/bin/bash

docker build \
    -t bermeitingerb/texlive:${1} \
    --build-arg IMAGE="bermeitingerb/texlive:${1}" \
    --no-cache \
    -f Dockerfile.full.update \
    .
