#!/bin/sh
# merge input video with allegro sound
ffmpeg -i $1 -i allegro.mp3 -shortest $1-allegro.mp4
