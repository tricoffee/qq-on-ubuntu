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

# setup ibus
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# setup dwm
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export DESKTOP_ENV="DWM"
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

synclient TapButton1=1
synclient HorizEdgeScroll=1
synclient RTCornerButton=2
synclient RBCornerButton=3

# /home/osily/software/bin/gp &

# yong -d
habak -ms /home/qq/Wallpapers/emacs-ref-with-desk.png/ &
while true; do
    xsetroot -name "`/home/qq/ShellScript/show-status-on-dwm.sh`"
    sleep 20
done &
