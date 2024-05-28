check_last_status_main () {
	exit_code=$?
	if [[ $exit_code != 0 ]] ; then
		status=""
		[[ "$SHOW_EXIT_CODE" == 1 ]] &&
			status="${status} $exit_code"
		echo "$status"
		return 1
	fi
	echo " "
	return 0
}

check_last_status () {
	echo "\$(check_last_status_main)"
}
