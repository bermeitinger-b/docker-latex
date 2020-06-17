#!/usr/bin/bash

# uses parallel to update TeXLive 2016, 2017, 2018, and 2019
parallel --jobs 4 --line-buffer ./update_history.sh {} ::: 2016 2017 2018 2019
