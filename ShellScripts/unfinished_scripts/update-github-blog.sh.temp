#!/bin/bash
# this script allow me update my personal blog on github
	MACHINE_VERSION=$(cat /etc/issue | awk '{print $1,$2}' | awk '{{printf "%s",$0}}')
	DATE=$(date)

	cd ~/Github/qiaoqiangv.github.com/

	# git pull
	git add -A
	git commit -m "update on ${MACHINE_VERSION} at ${DATE}"
	git push

	cd -


# [end]
