#!/bin/bash
NUM=$(date +%s%N)
RESOUT=`expr $NUM % 10 % 2`
echo $NUM
echo $RESOUT

if [ $RESOUT == 0 ]; then
	ls -l
fi
if [ $RESOUT == 1 ]; then
	ls -a
fi
