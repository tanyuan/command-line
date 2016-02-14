#!/bin/bash

# Show comment (the 3rd line of the file) about code files
# Example: ./list.sh sh

usage(){
	echo "Usage: $0 extension"
	exit 1
}
[[ $# -eq 0 ]] && usage

EXTENSION=$1

for file in *.$EXTENSION; do
    # Show file name in bold font
    tput bold
    echo $file
    # Show comment in normal font
    tput sgr0
    # Show the third line of the file, usually a comment
    head -n 3 $file | tail -n 1
done
