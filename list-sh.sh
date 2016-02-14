#!/bin/bash

# Show brief content of shell scrpt files

for file in *.sh; do

    # Show file name in bold font
    tput bold
    echo $file
    # Show comment in normal font
    tput sgr0
    # Show the third line of the script file, usually a comment
    head -n 3 $file | tail -n 1

done
