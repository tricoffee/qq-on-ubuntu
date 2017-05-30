#!/bin/bash

N_SPACES=$1

case $# in
    1)
        echo "out of if----------"
        if [[ $N_SPACES = [\s+] ]]
        then
            echo "---------------"
            echo "---$N_SPACES---"
            echo "---------------"
            exit
        fi
        echo "out of fi----------"
        ;;
    2)
        echo "there have $# parameter"
        ;;
    3)
        echo "there have $# parameter"
        ;;
    *)
        echo "Usage : $0 Parameters"
        ;;
esac
