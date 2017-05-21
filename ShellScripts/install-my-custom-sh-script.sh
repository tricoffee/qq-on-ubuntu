#!/bin/bash

# find specify shell script instruction example :
#	ls -la | awk '{print $9}' | grep -E -v "(\.|Shell)"
#	or
#	ls | grep -E -v "(test|temp|tmp)"

# use 'cp' command copy specify myself custom shell script to /usr/local/bin/ directory
	SPECIFY_SHELL_SCRIPT=$(ls /home/qq/ShellScripts/ | grep -E -v "(test|temp|tmp)")
	# echo ${SPECIFY_SHELL_SCRIPT}

	cd /home/qq/ShellScripts/
	chmod u+x /home/qq/ShellScripts/*

	cp -a ${SPECIFY_SHELL_SCRIPT} /usr/local/bin/

	cd -
