#!/bin/bash

rsync -a --progress -h --delete -z rsync://rsync.dante.ctan.org/CTAN/systems/texlive/tlnet/ texlive-data/2020
