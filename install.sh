#!/bin/bash

dtstr="$(date +'%Y%m%d%H%M%S')"

if [ -x /bin/pacman ]; then
	#Optional True Type Font for terminal window
	sudo pacman -S --needed ttf-ibm-plex
	#VIM Airline & Airline themes
	sudo pacman -S --needed vim-airline vim-airline-themes
fi

if [ -d "$HOME/.config/mc" ]; then
	mv -v "$HOME/.config/mc" "$HOME/.config/mc.$dtstr"
fi
cp -rv ./mc "$HOME/.config/"

if [ -f "$HOME/.vimrc" ]; then
	mv -v "$HOME/.vimrc" "$HOME/.vimrc.$dtstr"
fi
cp -v ./vimrc "$HOME/.vimrc"
