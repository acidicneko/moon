# Defines the minimum battery percentage to show warning
LOW_BATTERY=25

battery_main () {
	percentage=$(cat /sys/class/power_supply/BAT0/capacity)
	status=" $percentage%"
	if [[ "$percentage" < "$LOW_BATTERY" ]] ; then
		status=" $percentage%"
	fi
	echo "$status"
}

battery () {
	echo "\$(battery_main)"
}
