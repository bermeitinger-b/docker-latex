#!/bin/bash

parallel --line-buffer ./update_history.sh {} ::: 2016 2017 2018 2019
