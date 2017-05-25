#!/bin/bash

# find specify shell script instruction example :
#	ls -la | awk '{print $9}' | grep -E -v "(\.|Shell)"
#	or
#	ls | grep -E -v "(test|temp|tmp)"

	FILE_NAME_LIST=$(ls -l | grep "^\-" | awk '{print $9}')
	echo ${FILE_NAME_LIST}
	rm -i ${FILE_NAME_LIST}
