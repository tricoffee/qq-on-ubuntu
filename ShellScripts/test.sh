#!/bin/bash

path=~/Downloads
MACHINE=$(cat /etc/issue | awk '{print $1,$2}')
DATE=$(date)

echo ${MACHINE}
echo ${DATE}
echo ${path}

ls -la | awk {print $9} | grep -E -v "(X|vim)"
#!/bin/bash
	# 1.使用bash命令去除cat /etc/issue命令的回车换行符号输出
	# 2.使用awk命令去除cat /etc/issue命令的回车换行符号输出
	MACHINE_VERSION=$(cat /etc/issue | awk '{print $1,$2}')
	DATE=$(date)

	echo backup on ${MACHINE_VERSION} at ${DATE}

# [end]
