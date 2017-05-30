#!/bin/bash

# 一个显示信息用的脚本：
eth0=`ifconfig|grep 58.154.195`
if [ "x" = "x$eth0" ]; then
    echo -n "/"
else
    echo -n "="
fi

bat=`cat /proc/acpi/battery/BAT1/state`

if echo $bat|grep charged &>/dev/null; then
    echo -n " | "
else
    rate=$(echo $bat|grep '[0-9]* mA$'|awk '{print $3}')
    capacity=$(echo $bat|grep '[0-9]* mAh$'|awk '{print $3}')
    echo -n " | bat: $(($capacity * 60 / $rate)) min | "
fi

str=`free -m|grep "cache:.*"|awk '{print $3}'`
echo -n "$str M | "
str=`ps -A|wc -l`
echo -n "$str p | "
date +%H:%M



