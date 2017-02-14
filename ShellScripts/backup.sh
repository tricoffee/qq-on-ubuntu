#!/bin/bash

# use 'tree' command to detach the Download directory's contant
	ls ~/Downloads/ > ~/Note/backup/download-directory-content-list.txt
	tree ~/Note/ > ~/Note/backup/note-directory-content-list.txt
	ls ~/Github/ > ~/Note/backup/github-directory-content-list.txt
	ls ~/Books/ > ~/Note/backup/book-directory-content-list.txt

# use system command to checkout what different between the remote repository and local repository
	DIFF_HOMEDIR_AND_GITIGNORE=~/diff-the-Home-dir-and-.gitignore-file.txt
 
	echo "*** this is Home directory's contant ***" > ${DIFF_HOMEDIR_AND_GITIGNORE}
	echo " " >> ${DIFF_HOMEDIR_AND_GITIGNORE}

	ls -a ~/ >> ${DIFF_HOMEDIR_AND_GITIGNORE}

	echo " " >> ${DIFF_HOMEDIR_AND_GITIGNORE}
	echo " " >> ${DIFF_HOMEDIR_AND_GITIGNORE}

	echo "*** this is .gitignore regulate the file ignore rule ***" >> ${DIFF_HOMEDIR_AND_GITIGNORE}
	echo " " >> ${DIFF_HOMEDIR_AND_GITIGNORE}

	cat ~/.gitignore >> ${DIFF_HOMEDIR_AND_GITIGNORE}

	echo " " >> ${DIFF_HOMEDIR_AND_GITIGNORE}
	echo " " >> ${DIFF_HOMEDIR_AND_GITIGNORE}

	echo "[end]" >> ${DIFF_HOMEDIR_AND_GITIGNORE}

# use 'git' command backup Home folder to remote repository of the github
	# this two method to get machine version have equal result
	# MACHINE_VERSION=$(cat /etc/issue | awk '{print $1,$2}' | tr -d '\n')

	MACHINE_VERSION=$(cat /etc/issue | awk '{print $1,$2}' | awk '{{printf "%s",$0}}')
	DATE=$(date)

	cd ~/

	#git pull
	git add -A
	git commit -m "backup on ${MACHINE_VERSION} at ${DATE}"
	git push
	
	sleep 10

	cd -


# [end]
