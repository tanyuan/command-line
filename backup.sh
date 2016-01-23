#!/bin/bash

# rsync: Copy and merge source directory to target directory

usage(){
	echo "Usage: $0 source target"
	exit 1
}
[[ $# -eq 0 ]] && usage

SOURCE=$1
TARGET=$2

rsync -r $SOURCE $TARGET
