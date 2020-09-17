#!/usr/bin/bash

# uses parallel to build TeXLive 2016, 2017, 2018, 2019, and 2020
parallel \
	--ungroup \
    ./build.sh {} ::: 2016 2017 2018 2019 2020
