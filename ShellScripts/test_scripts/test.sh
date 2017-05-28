#!/bin/bash

case $# in
    0)
        echo "there have $# parameter"
        exit
        ;;
    1)
        if [ $1 == 1 ]
        then
            #:
            null
        fi
        ;;
    2)
        echo "there have $# parameter"
        ;;
    3)
        echo "there have $# parameter"
        ;;
    *)
        echo "To many parameters"
        ;;
esac
