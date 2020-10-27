#!/bin/sh

TEXLIVE="${TEXLIVE:-2020}"


IMAGE=registry.gitlab.com/bernhard.bermeitinger/fedora-docker-latex:${TEXLIVE}

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
