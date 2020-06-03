#!/bin/bash

docker build -t bermeitingerb/texlive:${1} -f Dockerfile-${1} .
