#!/bin/bash

# GIF Screencasting

# Output GIF filename
OUT_GIF=$(date +"%m%d-%H%M-%S")
# Save screencast to /tmp
TMP_AVI=$(mktemp /tmp/outXXXXXXXXXX.avi)

# 1. Capture screen selected by mouse, q to stop
# 2. Convert video to GIF
ffcast -s % ffmpeg -y -f x11grab -show_region 1 -framerate 15 \
    -video_size %s -i %D+%c -codec:v huffyuv                  \
    -vf crop="iw-mod(iw\\,2):ih-mod(ih\\,2)" $TMP_AVI         \
&& convert -set delay 10 -layers Optimize $TMP_AVI $OUT_GIF.gif
