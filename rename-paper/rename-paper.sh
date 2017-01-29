#!/bin/bash

# Rename academic paper PDF to author-year-title.pdf

# Example:
#   INPUT:  example.pdf
#   OUTPUT: Tanyuan - 2016 - Human-Computer Interaction.pdf

# Dependencies:
#   cb2bib
#   python
#     bibtexparser

usage(){
	echo "Usage: $0 PDF"
	exit 1
}
[[ $# -eq 0 ]] && usage

OLD_PDF=$1
TMP=/tmp/rename-paper.bib

rm -f $TMP

# Get bib information and save to $TMP
cb2bib --doc2bib "$OLD_PDF" $TMP --sloppy

# Extract from bib
NEW_NAME=`python ~/scripts/rename-paper/extract-bib.py $TMP`

echo "author - year - title"
echo "+++++++++++++++++++++"
echo $NEW_NAME

# Rename original PDF
mv "$OLD_PDF" "$NEW_NAME".pdf
