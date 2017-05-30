#!/bin/bash
# this script to echo some word to TODO file
	# test
	#echo -e "\n$(date) ~~~ CONTENT : $1" > ./test
	#echo -en '\n'  >> ./test

	LF='\n'
	SPACE=' '
	LINENUM=$(grep "[0-9]\.\s" ~/TODO | wc -l)

	let LINENUM+=1

	echo -e "${LF}${LINENUM}.${SPACE}$(date) - CONTENT : $1" >> ~/TODO
