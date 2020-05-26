#!/bin/bash

docker build -t bermeitingerb/texlive:$1 --build-arg TEXLIVE=$1 -f Dockerfile.history .
