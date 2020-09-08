#!/bin/sh

docker build \
    --build-arg TEXLIVE=${1} \
    -t texlive:${1} \
    -f texlive-data/Dockerfile \
    texlive-data/${1}
