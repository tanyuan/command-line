#!/bin/bash

# Extract full path file name into filename and extension
fullfile=$1
filename=$(basename "$fullfile")
extension="${filename##*.}"
filename="${filename%.*}"
