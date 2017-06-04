#!/bin/sh

# view current shell's status --- if result has 'i', 
# then it's a interactive shell; or if not, then it's 
# not a interactive shell.

    # create new file
    echo -e "\n list execute this shell script's shell's information." > $1

# detech is or is not interactive shell
    echo -e "\n=========================================" >> $1
    echo "# detech is or is not interactive shell" >> $1
    echo -e "=========================================" >> $1
    echo $-  >> $1

# detech is or is not login shell
    echo -e "\n\n=========================================" >> $1
    echo "# detech is or is not login shell" >> $1
    echo -e "=========================================" >> $1
    echo $0  >> $1

# detech current shell's PID
    echo -e "\n\n=========================================" >> $1
    echo "# detech current shell's PID" >> $1
    echo -e "=========================================" >> $1
    echo $BASHPID  >> $1

# detech current shell's PID with simple process tree
    echo -e "\n\n=========================================" >> $1
    echo "# detech current shell's PID with simple process tree" >> $1
    echo -e "=========================================" >> $1
    BASHPID_TEMP=$BASHPID

    ps -aux | grep $BASHPID_TEMP  >> $1
    pstree -ps $BASHPID_TEMP  >> $1

# detech current shell's PID with process tree
    echo -e "\n\n=========================================" >> $1
    echo "# detech current shell's PID with process tree" >> $1
    echo -e "=========================================" >> $1
    ps -axjf >> $1

    echo -e "\n\n=========================================" >> $1
    ps -axjf | grep $BASHPID_TEMP  >> $1

