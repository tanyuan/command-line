#!/bin/bash

# Convert selected page of a PDF file to PNG image (high definition)

usage(){
	echo "Usage: $0 PDF-file page-number"
	exit 1
}
[[ $# -eq 0 ]] && usage

FILE=$1
PAGE=$(($2-1))
OUT=$(basename "$FILE")
OUT="${OUT%.*}"

convert -density 96 $FILE[$PAGE] $OUT-$(($PAGE+1)).png
