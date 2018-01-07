#!/bin/bash

# Create animated GIF from a video of any format.

#   $1 - the path to the movie we're converting.
#   $2 - the start time of the finished product.
#        This can be in seconds, or it also accepts the "hh:mm:ss[.xxx]" format.
#   $3 - the duration of the video sequence.
#        This can be in seconds, or it also accepts the "hh:mm:ss[.xxx]" format.
#
# Examples:
#
#   movieme <path> <start-time> <duration>
#   ~/Desktop/dr-strangelove.mp4 23:12 3
#   ~/Desktop/holman-backflip-on-fire.mov 3.9 1.75

usage(){
	echo "Usage: $0 video start-time duration"
    echo "Example: $0 video.mov 21:11 3"
	exit 1
}
[[ $# -eq 0 ]] && usage

VIDEO=$1
START_TIME=$2
DURATION=$3

# Extract the filename without extension
FILENAME=$(basename "$VIDEO")
FILENAME="${FILENAME%.*}"

TMP_PATH=/tmp/video-to-gif

# cleanup
rm -rf $TMP_PATH
# create tmp dir
mkdir -p $TMP_PATH

# split the movie into constituent frames
ffmpeg -i "$1" -f image2 -vf "scale=iw*sar:ih" -ss $START_TIME -t $DURATION -r 7 $TMP_PATH/d-%05d.png

# Convert to GIF using ImageMagick
convert -delay 10 -resize 128x128 -layers Optimize $TMP_PATH/* $FILENAME-$START_TIME.gif 
