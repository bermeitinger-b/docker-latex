#!/bin/bash

echo "(1/2) Building data ${1}"
docker build \
    --build-arg TEXLIVE=${1} \
    -t texlive:${1} \
    -f texlive-data/Dockerfile \
    texlive-data/${1}

echo "(2/2) Building runtime ${1}"
docker build \
    --build-arg TEXLIVE=${1} \
    --build-arg BUILD_DATE="$(date --rfc-3339=date)" \
    -t registry.gitlab.com/bernhard.bermeitinger/fedora-docker-latex:${1} \
    texlive
