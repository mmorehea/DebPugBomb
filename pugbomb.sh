#!/bin/bash

D=`awk -v min=1 -v max=48 'BEGIN{srand(); print int(min+rand()*(max-min+1))}'`
LINE=`sed "${D}q;d" /usr/bin/pugtext.txt`
pico2wave -l=en-GB -w=/tmp/pug.wav "$LINE"
aplay -q /tmp/pug.wav
rm /tmp/pug.wav
