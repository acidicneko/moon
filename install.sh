printf "\e[1;34m __  __  ___   ___  _   _\n"
printf "|  \/  |/ _ \ / _ \| \ | |\n"
printf "| |\/| | | | | | | |  \| |\n"
printf "| |  | | |_| | |_| | |\  |\n"
printf "|_|  |_|\___/ \___/|_| \_|\n\n"

printf "\e[1;37mMoon Prompt Installer by CLAW (https://github.com/clawbhaiya)\e[0m\n"

dir=$HOME/.config/moon
read -p "Install Moon to $dir ? [y/n]: " choice

if [[ "$choice" = "n" ]] ; then
	printf "\e[31mInstall cancelled!\e[0m\n"
	exit 1
fi

printf "\e[1;33mInstalling Moon to $dir...\e[0m\n"

if [ -d "$dir" ]; then
	printf "\e[31mMoon is already installed!\e[0m\n"
	exit 1
else
	git clone https://github.com/clawbhaiya/moon.git $dir
	chmod +x "$dir"/bin/mm
fi
echo "PATH=\"\$PATH:$dir/bin/\"" >> "$HOME"/.bashrc
echo . "$dir/moon.sh" >> "$HOME"/.bashrc

printf "\e[1;32mMoon Prompt installed! Please restart BASH...\e[0m\n"

