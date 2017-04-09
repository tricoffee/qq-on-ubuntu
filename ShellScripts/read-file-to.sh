#!/bin/bash

# command format : "cat file | head +1 > filename"

	if [  == h ] # head
	if [  == t ] # tail

	if [  h+num  ] # read num line from files head
	if [  t+num  ] # read num line from files tail

	if [  has newfile name  ]
		> newfile name
	else
		> stdout

	cat $1 | ARGU(head + some line or tail + some line) > stdout or SPECIFY_FILE_NAME
