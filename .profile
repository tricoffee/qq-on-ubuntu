# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi


############################
#    my personal config    
############################

# alias some emacsclient short name
alias emt='emacsclient -t -a ""'  # open emacsclient with term
alias emc='emacsclient -c -a ""'  # open emacsclient with GUI

# detect '.profile' shell script execute info
# like shell env; it it alternative shell or no-alternative shell;
# is a login shell or not login shell. etc.

env > /home/qq/profile_shell_env/env.txt
export > /home/qq/profile_shell_env/export.txt
