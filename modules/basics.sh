#!/bin/env bash
username () {
	echo "\e[${USERNAME_COL}m\u\e[0m"
}

hostname () {
	echo "\e[${HOSTNAME_COL}m\h\e[0m"
}

working_dir () {
	echo "\e[${WORKING_DIR_COL}m\w\e[0m"
}

