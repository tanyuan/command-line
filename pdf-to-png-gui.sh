#!/bin/bash

# Convert selected page of a PDF file to PNG image (high definition)

usage(){
	echo "Usage: $0 PDF-file"
	exit 1
}
[[ $# -eq 0 ]] && usage

PAGE=`zenity --entry --title="PDF to PNG" --text="Enter the page number:"`

# If canceled in zenity
if [[ $? -eq 1 ]]; then
    exit 1
fi

FILE=$1
PAGE=$(($PAGE-1))
OUT=$(basename "$FILE")
OUT="${OUT%.*}"

convert -density 96 "$FILE"[$PAGE] "$OUT"-$(($PAGE+1)).png
