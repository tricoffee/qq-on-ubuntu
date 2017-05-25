#!/bin/bash
# this script use wget command to download entire specify website
# useage : 
#	$ wget-auto-download-website.sh [YOUR SPECIFY WEBSITE]

	# test
	#echo ${SPECIFY_WEBSITE}

	SPECIFY_WEBSITE=$1
	wget -e robots=off -w 1 -c -np -k -L -p -m -P ~/Downloads/ ${SPECIFY_WEBSITE}
