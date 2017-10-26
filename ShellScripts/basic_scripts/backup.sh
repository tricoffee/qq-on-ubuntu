
# use 'tree' command to detach the Download directory's contant
	ls ~/Downloads/ > ~/Note/Backup/download-directory-content-list.txt
	ls ~/Github/ > ~/Note/Backup/github-directory-content-list.txt
	ls ~/Books/ > ~/Note/Backup/books-directory-content-list.txt
	tree ~/Tools/ > ~/Note/Backup/tools-directory-content-list.txt

# use system command to checkout what different between the remote repository and local repository
	LF='\n'
	DIFF_HOMEDIR_AND_GITIGNORE=~/diff-the-Home-and-repo.txt

	echo "*** this is Home directory's contant ***" > ${DIFF_HOMEDIR_AND_GITIGNORE}
	echo -e "${LF}$(ls -a ~/)${LF}${LF}" >> ${DIFF_HOMEDIR_AND_GITIGNORE}
	echo "*** this is .gitignore regulate the file ignore rule ***" >> ${DIFF_HOMEDIR_AND_GITIGNORE}
	echo -e "${LF}$(cat ~/.gitignore)${LF}${LF}" >> ${DIFF_HOMEDIR_AND_GITIGNORE}
	echo "[end]" >> ${DIFF_HOMEDIR_AND_GITIGNORE}
 
# cp emacs setting to ~/.emacs.d_bak directory
	cp -b -r  ~/.emacs.d/init.el  ~/.emacs.d/my_config/  ~/.emacs.d_bak/

# use 'git' command backup Home folder to remote repository of the github
	# this two method to get machine version have equal result
	# MACHINE_VERSION=$(cat /etc/issue | awk '{print $1,$2}' | tr -d '\n')

	MACHINE_VERSION=$(cat /etc/issue | awk '{print $1,$2}' | awk '{{printf "%s",$0}}')
	DATE=$(date)

	echo -en "\n"
	echo "=============================================="
	echo "||  shell is will change to HOME directory  ||"
	echo "=============================================="
	echo -en "\n"

	cd /home/qq/

	echo -en "\n"
	echo "=============================================================="
	echo "||  using "git add -u" to add some files before "git pull"  ||"
	echo "=============================================================="
	echo -en "\n"

	git add -u
	git commit -m "commit before pull at ${DATE}"

	echo -en "\n"
	echo "====================================================================="
	echo "||  now is using "git pull" before push local repo to remote repo  ||"
	echo "====================================================================="
	echo -en "\n"

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


# [end]
