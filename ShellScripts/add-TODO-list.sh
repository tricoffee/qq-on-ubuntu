#!/bin/bash
# this script to echo some word to TODO file
	echo -en '\n'  >> ~/TODO
	echo -e "$(date) ~~~ CONTENT : $1" >> ~/TODO
