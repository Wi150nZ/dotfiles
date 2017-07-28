# this is simple script for setting a random wallpaper everytime x server is started

#!/bin/bash

dir="/home/wilson/Pictures"

if [ ! -d "$dir" ]; then
  echo "$dir does not exist"
  exit 1
fi

setBackground() {
  pic="$dir/$(ls $dir | shuf -n 1)"
  nitrogen --set-scaled $pic
}

setBackground

exit 0
