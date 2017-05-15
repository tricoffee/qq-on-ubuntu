#!/bin/bash

# USEAGE="Useage: `basename $0` [-f] [filename] [-h|-s|-t] [num|num-num] [OUT_PUT_FILENAME]"

	#if [  == h ] # head
	#if [  == s ] # specified line
	#if [  == t ] # tail

	#if [  -h num  ] # read num line from files head
	#if [  -s num-num  ] # read num line to num lines
	#if [  -t num  ] # read num line from files tail

	#if [  has newfile name  ]
		#> newfile name
	#else
		#> stdout

	while getopts f:h:s:t OPTION ; do #!!!!!!!!!!!
		case $OPTION in
			f) INFILE="$OPTARG" ;;
			h) READLINE="head $OPTARG" ;;
			s) READLINE= ;;
			t) READLINE="tail $OPTARG" ;;
		esac
	done

	echo ${OPTION}

	#READ_FILE=$1
	#cat ${READ_FILE} | ARGU(head + some line or tail + some line) > stdout or SPECIFY_FILE_NAME
