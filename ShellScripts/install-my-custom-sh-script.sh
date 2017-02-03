#!/bin/bash

# find specify shell script instruction example :
#	ls -la | awk '{print $9}' | grep -E -v "(\.|Shell)"
#	or
#	ls | grep -E -v "(test|temp|tmp)"

# use 'cp' command copy specify myself custom shell script to /usr/local/bin/ directory
	SPECIFY_SHELL_SCRIPT=$(ls | grep -E -v "(test|temp|tmp)")

	# debug command
	# echo ${SPECIFY_SHELL_SCRIPT}

	cp -a ~/ShellScripts/${SPECIFY_SHELL_SCRIPT} /usr/local/bin/


