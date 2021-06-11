#!/bin/bash
check_last_status_main () {
	if [[ $? != 0 ]] ; then
		echo " "
		return 1
	fi
	echo " "
	return 0
}

check_last_status () {
	echo "\$(check_last_status_main)"
}
