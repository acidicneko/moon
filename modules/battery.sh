# Defines the minimum battery percentage to show warning
LOW_BATTERY=25

battery_main () {
	percentage=$(cat /sys/class/power_supply/BAT0/capacity)
	status=$(cat /sys/class/power_supply/BAT0/status)
	display=" $percentage%"
	
	if [ "$status" = "Charging" ] ; then
		display=" $percentage%"
		echo "$display"
	
	elif [ "$status" = "Discharging" ] ; then
		display=" $percentage%"
		if [ "$percentage" < "$LOW_BATTERY" ] ; then
			display=" $percentage%"
		fi
		echo "$display"
	fi
}

battery () {
	echo "\$(battery_main)"
}
