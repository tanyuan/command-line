#!/bin/bash

# Resize image by Imagemagick

usage(){
	echo "Usage: $0 size image"
	exit 1
}
[[ $# -eq 0 ]] && usage

SIZE=$1

fullfile=$2
filename=$(basename "$fullfile")
extension="${filename##*.}"
filename="${filename%.*}"

convert $fullfile -resize ${SIZE}x${SIZE} $filename-$SIZE.$extension
