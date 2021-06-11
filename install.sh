echo " __  __  ___   ___  _   _"
echo "|  \/  |/ _ \ / _ \| \ | |"
echo "| |\/| | | | | | | |  \| |"
echo "| |  | | |_| | |_| | |\  |"
echo "|_|  |_|\___/ \___/|_| \_|"

echo "Moon Prompt Installer by CLAW (https://github.com/ayush7788)"

dir=$HOME/.config/moon
read -p "Install Moon to $HOME/.config/moon/ ? [y/n]: " choice

if [[ "$choice" = "n" ]] ; then
	read -p "Enter a location to install Moon to: " dir
fi

echo Installing Moon to $dir...

git clone https://github.com/ayush7788/moon.git $dir

echo . "$dir/moon.sh" >> $HOME/.bashrc

echo Moon Prompt installed! Please restart BASH...
