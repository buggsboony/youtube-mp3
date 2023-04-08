#!/bin/bash

#install stuff
what=${PWD##*/}   
extension=.sh

#youtube-dl is dead
#sudo pacman -S youtube-dl
sudo pacman -S yt-dlp

#peut être extension vide
chmod +x $what$extension

echo "Adding alias in .bashrc"

echo  "### $what alias generated code at $(date +"%Y-%m-%d %H:%I:%S" )" >> $HOME/.bashrc
echo  "$what() { source $PWD/$what.sh \$*; }" >> $HOME/.bashrc
echo  "### $what alias generated code " >> $HOME/.bashrc

echo "done."

echo "Please reload console to source .bashrc file";
