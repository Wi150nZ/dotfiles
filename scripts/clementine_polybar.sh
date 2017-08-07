#!/bin/bash

# the following is a script for outputting music data from the clementine player

# todo: conditional => if playing display title and artist
title=$(qdbus org.mpris.MediaPlayer2.clementine /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Player.Metadata | grep title | cut -d " " -f2-)
