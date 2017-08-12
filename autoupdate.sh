#!/bin/bash

# the following script will automatically update the repo with current dotfiles

yes | cp -rf ~/.config/i3/config ~/Codespace/dotfiles/i3/config 
yes | cp -rf ~/.config/neofetch/config ~/Codespace/dotfiles/neofetch/config
yes | cp -rf ~/.config/polybar/* ~/Codespace/dotfiles/polybar/
yes | cp -rf ~/.config/mpd/mpd.conf ~/Codespace/dotfiles/mpd.conf
