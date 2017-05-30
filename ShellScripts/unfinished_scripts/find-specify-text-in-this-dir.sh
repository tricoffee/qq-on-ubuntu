#!/bin/bash
# find some text on current directory recursively
	find ./ -name "*.*" | grep -n -r -i --color=auto "$1"
