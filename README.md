# docker-latex
Docker-Latex image for building without the hassle of installing TeXLive

## Building the latest

- Use `Dockerfile.base` to create the base image (currently Fedora 32 with needed dependencies)
- Use `Dockerfile.full` to create the full TeXLive image (currently 2020)
- Use `Dockerfile.latest` to update Fedora as well as TeXLive

## About historic images (2016--2019)
They are created from a rsynced local mirror, so we don't need to download the whole distribution all over again. It's archived anyway and will not change. The contents are in a local image `texlive:<year>` which source is not included here (will be some day).

`build_history.sh <year>` creates the historic release from TeXLive <year>. It only supports 2016, 2017, 2018, and 2019. Older releases should be buildable the same way but I do not need them, so I didn't bother.
There is a release-specific Dockerfile because there might be something that changes through the years. Using build-args doesn't help with cache anyway here.

`parallel_build_history.sh` uses the tool `parallel` to build the history releases in parallel. They depend on the local `texlive:<year>` image which contains the full rsynced mirror.
