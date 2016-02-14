#!/bin/bash

# Show README files in subdirectories

# Show first line of README* in current directory
find . -maxdepth 1 -name 'README*' -exec head -1 {} \;

# Line-based reading to avoid parsing error when filename contains spaces
# Don't show errors if no subdirectories
ls -d -1 */ 2> /dev/null | while read dir; do
    # Show directory name in bold font
    tput bold
    echo $dir
    # Show README* in normal font
    tput sgr0
    # Find README* in the subdirectory and show the first line of README
    find "$dir" -maxdepth 1 -name 'README*' -exec head -1 {} \;
done
