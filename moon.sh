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
USERNAME_COL="1;37"	# controls username module color
HOSTNAME_COL="1;32"	# controls hostname module color
WORKING_DIR_COL="1;34"	# controls workind_dir module color
GIT_COL="1;36"		# controls git_module module color
DATE_COL="1;35"		# controls date_module & time_module colors
SHOW_EXIT_CODE=1	# defines if exit code should be shown (1 = true, 0 = false)
CMD_DURATION_COL="1;33"	# controls cmd_duration module col
#LOW_BATTERY=20		# controls low battery warning level

# include your modules here
## Non modular text can be also written here, eg, newlines, special characters, etc
MODULES="\n\
 $(username)@$(hostname) | $(working_dir) $(check_last_status)\
\n  "

prompt="$MODULES"

export PS1="$prompt"
