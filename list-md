#!/bin/bash

# Show brief content of Markdown files

for file in *.md; do

    # Show file name in bold font
    tput bold
    echo $file
    # Show file content in normal font
    tput sgr0
    # Show the first 10 lines and ignore blank lines
    head  $file | sed -e '/^$/d'
    echo

done
