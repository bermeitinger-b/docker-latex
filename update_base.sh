#!/bin/bash

docker build \
    --no-cache \
    -t bermeitingerb/texlive:base \
    -f Dockerfile.base.latest \
    .
