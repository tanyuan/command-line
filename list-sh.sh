#!/bin/bash

# Show brief content of shell scrpt files

for file in *.sh; do

    tput bold
    echo $file
    tput sgr0
    head -n 3 $file | tail -n 1
    echo

done
