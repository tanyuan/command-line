#!/bin/bash

# Convert a PDF file to PNG images (high definition)

usage(){
	echo "Usage: $0 PDF-file total-pages"
	exit 1
}
[[ $# -eq 0 ]] && usage

FILE=$1
TOTAL=$2
OUT=$(basename "$FILE")
OUT="${OUT%.*}"

for PAGE in 0..$(($TOTAL-1)); do
    convert -density 96 $FILE[$PAGE] $OUT-$PAGE.png
done
