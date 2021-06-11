#!/bin/env bash
printf "\e[1;34m __  __  ___   ___  _   _\n"
printf "|  \/  |/ _ \ / _ \| \ | |\n"
printf "| |\/| | | | | | | |  \| |\n"
printf "| |  | | |_| | |_| | |\  |\n"
printf "|_|  |_|\___/ \___/|_| \_|\n\n"

printf "\e[1;37mMoon Prompt Installer by CLAW (https://github.com/ayush7788)\e[0m\n"

dir=$HOME/.config/moon
read -rp "Install Moon to $HOME/.config/moon/ ? [y/n]: " choice

if [[ "$choice" = "n" ]] ; then
	printf "\e[31mInstall cancelled!\e[0m\n"
	exit 1
fi

printf "\e[1;33mInstalling Moon to $dir...\e[0m\n"

git clone https://github.com/ayush7788/moon.git $dir

echo . "$dir/moon.sh" >> $HOME/.bashrc

printf "\e[1;32mMoon Prompt installed! Please restart BASH...\e[0m\n"
