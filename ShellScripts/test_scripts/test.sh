#!/bin/bash

if ! [[ $# -ge 0 && $# -le 3 ]]
then
    echo "to many parameters"
elif [ $# == 1 ]
then
    echo "there have $# parameter"
elif [ $# == 2 ]
then
    echo "there have $# parameter"
elif [ $# == 3 ]
then
    echo "there have $# parameter"
fi
