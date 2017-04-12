#!/bin/bash

# find specify shell script instruction example :
#	ls -la | awk '{print $9}' | grep -E -v "(\.|Shell)"
#	or
#	ls | grep -E -v "(test|temp|tmp)"

# use 'cp' command copy specify keyword file to specify directory

	DIR=$1
	KEYWORD=$2
	DIST=$3
	# 解析$@（参数列表）

	if [  $# < 3  ]
	if [  $# == 3  ]
	if [  $# > 3  ]
	# 判断参数个数

	# KEYWORD_FILE=$(find ${DIR} -name ${KEYWORD})
	# echo ${KEYWORD_FILE}
	# echo ${DIST}

	#cp -a ${KEYWORD_FILE} ${DIST}
