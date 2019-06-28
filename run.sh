#!/bin/sh

TEXLIVE="${TEXLIVE:-latest}"


IMAGE=bermeitingerb/texlive:${TEXLIVE}

exec docker run \
	--memory 1g \
	--memory-swap 1g \
	--rm \
	-i \
	--user="$(id -u):$(id -g)" \
	--net=none \
	-v "$(pwd)":/data \
	"$IMAGE" \
	"$@"
