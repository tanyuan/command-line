#!/bin/bash

# Convert each .jpg to .png with the same filenames

for filename in *.jpg; do
    echo $filename
    stripfilename="${filename%.*}"
    convert $filename $stripfilename.png
done
