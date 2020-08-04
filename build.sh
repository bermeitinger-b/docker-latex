#!/bin/bash

docker build --build-arg TEXLIVE=${1} -t bermeitingerb/texlive:${1} -f Dockerfile.full .
