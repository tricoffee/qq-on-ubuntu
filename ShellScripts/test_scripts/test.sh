#!/bin/bash

#ls -la | awk {print $9} | grep -E -v "(X|vim)"

	# 1.使用bash命令去除cat /etc/issue命令的回车换行符号输出
	# 2.使用awk命令去除cat /etc/issue命令的回车换行符号输出
	#MACHINE_VERSION=$(cat /etc/issue | awk '{print $1,$2}')
	#DATE=$(date)

	#echo backup on ${MACHINE_VERSION} at ${DATE}

# [end]
	# MACHINE_VERSION=$(cat /etc/issue | awk '{print $1,$2}' | tr -d '\n')
	#MACHINE_VERSION=$(cat /etc/issue | awk '{print $1,$2}' | awk '{{printf "%s",$0}}')
	# DATE=$(date)

	# echo $MACHINE_VERSION

if [ ($# >= 0) $$ ($# <= 3)]
then
    echo $#
else
    echo "to many parameters"
fi
