raspberry-videodisplay
======================

Use a raspberry-pi as a remote video display controller.

## Customization ##

### After Boot ###

Clear screen after boot and diplay custom message.

Insert in bash file and execute with `sudo`:

    mv /etc/issue /etc/issue-old
	
    clear > /etc/issue

    cat /etc/issue-old >> /etc/issue
	rm /etc/issue-old

    echo "\n\nFeG GieÃŸen - Remote Video Display\nhttps://github.com/feg-giessen/raspberry-videodisplay" >> /etc/issue

## Scripts ##

Play local file in fullscreen on HDMI display with audio analog out.

**play_local.sh**:

    #!/bin/bash

    setterm -powerdown off -blank off > /dev/tty0
    clear > /dev/tty0
    setterm -cursor off > /dev/tty0

    # -b        blacksout the screen (no codec/display infos)
    # -o hdmi   play audio through hdmi
    omxplayer -b "$@" > /dev/tty0

    clear > /dev/tty0
    setterm -cursor on > /dev/tty0

Call with video file as parameter:

    sudo ./play_local.sh "My Video.mp4"