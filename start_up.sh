#!/bin/bash
# Open Firefox on the first workspace
wmctrl -s 1
flatpak run org.mozilla.firefox &
sleep 2

# Open Terminal on the second workspace

wmctrl -s 2
gnome-terminal -- bash -c "tmux; exec bash" &
sleep 2

cd "/home/alireza/Documents/Notes_obs/Notes_Obsidian"
date '+%A %W %Y %X' >>./Welcome.md
git add .
git commit -m "startup"
git push

updt
