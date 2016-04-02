#!/bin/bash

# Disable Apple Keyboard Caps Lock Key Delay
# apple-kb-caps /dev/hidraw1
sudo apple-kb-caps `dmesg | grep apple | grep Keyboard | grep input0 | tail -1 | sed -e 's/.*hidraw\([[:digit:]]\+\).*/\/dev\/hidraw\1/'`
