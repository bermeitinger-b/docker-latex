#!/bin/bash

docker build \
    --build-arg TEXLIVE=${1} \
    --build-arg BUILD_DATE="$(date --rfc-3339=date)" \
    -t bermeitingerb/texlive:${1} \
    .
