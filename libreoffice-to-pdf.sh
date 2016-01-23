#!/bin/bash

# Convert LibreOffice supported files (docx, pptx etc.) to PDF

usage(){
	echo "Usage: $0 file"
	exit 1
}
[[ $# -eq 0 ]] && usage

FILE=$1

libreoffice --headless --convert-to pdf $FILE
