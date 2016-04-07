#!/bin/bash

D=`awk -v min=1 -v max=48 'BEGIN{srand(); print int(min+rand()*(max-min+1))}'`
LINE=`sed "${D}q;d" text.txt`
pico2wave -l=en-GB -w=/tmp/test.wav "$LINE"
aplay -q /tmp/test.wav
rm /tmp/test.wav
