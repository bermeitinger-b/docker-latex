#!/bin/sh

TEXLIVE="${TEXLIVE:-latest}"


IMAGE=bermeitingerb/texlive:${TEXLIVE}

exec docker run \
	--memory 4g \
	--memory-swap 4g \
	--rm \
	-it \
	--user="$(id -u):$(id -g)" \
	--net=none \
	-v "$(pwd)":/home/tex/data \
	"$IMAGE" \
	"$@"
