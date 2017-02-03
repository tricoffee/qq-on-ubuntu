	DATE=$(date)

	cd ~/

	git add -A
	git commit -m "backup on ${MACHINE_VERSION} in ${DATE}"
	git push -f

	cd -


# [end]
