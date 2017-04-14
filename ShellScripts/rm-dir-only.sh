#!/bin/bash

	DIR_LIST=$(ls -F | grep "/")
	echo ${DIR_LIST}
	rm -r -i ${DIR_LIST}
