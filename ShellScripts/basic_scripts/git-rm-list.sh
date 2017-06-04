#!/bin/bash

FILES=".adobe/ .aria2/ .bash_history .bash_logout .bogofilter/ Books/ .cache/ .config/ Downloads/ .ecryptfs@ .emacs.d/ .gconf/ .gimp-2.8/ .git/ Github/ .gnome2/ .gnome2_private/ .gnome-commander/ .gnupg/ .ICEauthority .lesshst .local/ .macromedia/ .mozilla/ .nano/ .npm/ .Private@ .python_history .RapidSVN .sdcv_history .spacemacs .ssh/ .subversion/ .sudo_as_admin_successful .sunpinyin/ .thumbnails/ .thunderbird/ Tools/ .wget-hsts .xinputrc 下載/ 公共/ 圖片/ 影片/ 文件/ 桌面/ 模板/ 音樂/"

for I in $FILES
do
    #echo $I
    git rm -r --cached $I
done
