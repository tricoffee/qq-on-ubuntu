#!/bin/bash

# use 'tree' command to detach the Download directory's contant
	ls ~/Downloads/ > ~/Note/backup/download-directory-content-list.txt
	tree ~/Note/ > ~/Note/backup/note-directory-content-list.txt
	ls ~/Github/ > ~/Note/backup/github-directory-content-list.txt
	ls ~/Books/ > ~/Note/backup/book-directory-content-list.txt

# use system command to checkout what different between the remote repository and local repository
	LF='\n'
	DIFF_HOMEDIR_AND_GITIGNORE=~/diff-the-Home-dir-and-.gitignore-file.txt

	echo "*** this is Home directory's contant ***" > ${DIFF_HOMEDIR_AND_GITIGNORE}
	echo -e "${LF}$(ls -a ~/)${LF}${LF}" >> ${DIFF_HOMEDIR_AND_GITIGNORE}
	echo "*** this is .gitignore regulate the file ignore rule ***" >> ${DIFF_HOMEDIR_AND_GITIGNORE}
	echo -e "${LF}$(cat ~/.gitignore)${LF}${LF}" >> ${DIFF_HOMEDIR_AND_GITIGNORE}
	echo "[end]" >> ${DIFF_HOMEDIR_AND_GITIGNORE}
 
# use 'git' command backup Home folder to remote repository of the github
	# this two method to get machine version have equal result
	# MACHINE_VERSION=$(cat /etc/issue | awk '{print $1,$2}' | tr -d '\n')

	MACHINE_VERSION=$(cat /etc/issue | awk '{print $1,$2}' | awk '{{printf "%s",$0}}')
	DATE=$(date)

	cd /home/qq/

	echo -en "\n"
	echo "======================================"
	echo "||  shell change to HOME directory  ||"
	echo "======================================"
	echo -en "\n"

	git add -u
	git commit -m "commit before pull at ${DATE}"

	git pull

	git add -A
	git commit -m "backup on ${MACHINE_VERSION} at ${DATE}"
	git push

	echo -en "\n"
	echo "========================================================"
	echo "||  backup home folder to github remote repository !  ||"
	echo "========================================================"
	echo -en "\n"
	echo "=========================================================================="
	echo "||  now shell will change to old directory, press C^c to cancel action  ||"
	echo "=========================================================================="

	sleep 10

	cd -
