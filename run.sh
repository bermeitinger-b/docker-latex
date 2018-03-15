#!/bin/sh
IMAGE=bermeitingerb/fedora-latex:latest

exec docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD":/src "$IMAGE" "$@"
