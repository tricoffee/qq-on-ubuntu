#!/bin/bash

# find specify shell script instruction example :
#	ls -la | awk '{print $9}' | grep -E -v "(\.|Shell)"
#	or
#	ls | grep -E -v "(test|temp|tmp)"

# use 'cp' command copy specify myself custom shell script to /usr/local/bin/ directory

	SCRIPT_PATH=~/ShellScripts/basic_scripts/
	SPECIFIED_SHELL_SCRIPT=$(ls ${SCRIPT_PATH} | grep -E -v "(test|temp|tmp)")

	echo ${SPECIFIED_SHELL_SCRIPT}
	cd ${SCRIPT_PATH}
	cp -a ${SPECIFIED_SHELL_SCRIPT} /usr/local/bin/
	cd -
