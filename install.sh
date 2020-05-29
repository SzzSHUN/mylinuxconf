#!/bin/bash

dtstr="$(date +'%Y%m%d%H%M%S')"

if [ -x /bin/pacman ] || [ -x /usr/bin/pacman ]; then
	#Font for terminal window
	sudo pacman -S --needed awesome-terminal-fonts
	#VIM Airline & Airline themes
	sudo pacman -S --needed vim vim-airline vim-airline-themes
	#mc & Double Commander-GTK
	sudo pacman mc doublecmd-gtk2
fi

if [ -d "$HOME/.config/mc" ]; then
	mv -v "$HOME/.config/mc" "$HOME/.config/mc.$dtstr"
fi
cp -rv ./mc "$HOME/.config/"


if [ ! -d $HOME/.vim ]; then mkdir $HOME/.vim; fi
if [ -f "$HOME/.vimrc" ]; then
	mv -v "$HOME/.vimrc" "$HOME/.vim/vimrc.$dtstr"
elif [ -f "$HOME/.vim/vimrc" ]; then
	mv -v "$HOME/.vim/vimrc" "$HOME/.vim/vimrc.$dtstr"
fi
cp -v ./vimrc "$HOME/.vim/vimrc"
