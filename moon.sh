#  __  __  ___   ___  _   _
# |  \/  |/ _ \ / _ \| \ | |
# | |\/| | | | | | | |  \| |
# | |  | | |_| | |_| | |\  |
# |_|  |_|\___/ \___/|_| \_|
# Moon Prompt for BASH by CLAW (https://github.com/ayush7788)
#
## A set of basic modules have been provided.
## To make your own modules check the documentation


## DO NOT PLAY WITH THIS TwT
# include all module files
for i in $HOME/.config/moon/modules/* ; do
	. "$i"
done

## Options provided by modules can be configures here
# configuration for modules
USERNAME_COL="1;37"
HOSTNAME_COL="1;32"
WORKING_DIR_COL="1;34"
GIT_COL="1;36"
DATE_COL="1;35"
SHOW_EXIT_CODE=1
#LOW_BATTERY=20

# include your modules here
## Non modular text can be also written here, eg, newlines, special characters, etc

# Available Modules
# username, hostname, working_dir
# battery, git, check_last_status
MODULES="\n\
$(username)@$(hostname) | $(working_dir) $(check_last_status)\
\n>> "

prompt=$MODULES

export PS1=$prompt
