#!/bin/bash

docker build \
    -t bermeitingerb/texlive:2020 \
    --build-arg IMAGE="bermeitingerb/texlive:2020" \
    --no-cache \
    -f Dockerfile.latest \
    .

docker build \
    -t bermeitingerb/texlive:latest \
    --build-arg IMAGE="bermeitingerb/texlive:2020" \
    -f Dockerfile.latest \
    .
