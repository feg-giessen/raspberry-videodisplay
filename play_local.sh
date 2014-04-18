#!/bin/bash

setterm -powerdown off -blank off > /dev/tty0
clear > /dev/tty0
setterm -cursor off > /dev/tty0

# -b blacksout the screen (no codec/display infos)
omxplayer -b "$@" > /dev/tty0

clear > /dev/tty0
setterm -cursor on > /dev/tty0
