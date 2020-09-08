#!/bin/bash

rsync -a --progress -h --delete -z rsync://texlive.info/historic/systems/texlive/${1}/tlnet-final/ texlive-data/${1}
