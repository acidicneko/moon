# DATE_COL variable is used to change color of date and time module

DATE_FORMAT="%a %b %d"

date_main () {
	echo $(date +"$DATE_FORMAT")
}

date_module () {
	echo "\e[${DATE_COL}m\$(date_main)\e[0m"
}

time_main () {
	echo $(date +"%I:%M %p")
}

time_module () {
	echo "\e[${DATE_COL}m\$(time_main)\e[0m"
}
