#!/bin/bash

# Rename the file with the current date and time
# For example: example.txt -> 1229-9415-52.txt

fullfile=$1

# Extract directory and extension
directory=$(dirname "${fullfile}")
extension="${fullfile##*.}"

# For example: 1229-0415-52
newfile=$(date +"%m%d-%H%M-%S")

# Rename the file
mv $fullfile $directory/$newfile.$extension
