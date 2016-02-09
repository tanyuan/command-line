#!/bin/bash

# Show brief content of Markdown files

for file in *.md; do

    tput bold
    echo $file
    tput sgr0
    head -n 5 $file
    echo

done
