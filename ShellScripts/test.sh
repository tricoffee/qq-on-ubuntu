#!/bin/bash

path=~/Downloads
MACHINE=$(cat /etc/issue | awk '{print $1,$2}')
DATE=$(date)

echo ${MACHINE}
echo ${DATE}
echo ${path}

ls -la | awk {print $9} | grep -E -v "(X|vim)"
