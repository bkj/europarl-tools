#!/bin/bash

mkdir -p clean_data
ls data | parallel "cat data/{} | python clean-europarl.py > clean_data/{}"

