;;; init-my-config.el --- some personal setup for emacs
;;
;; This file will load by ~/.emacs.d/init.el, and when it
;; be loaded, it will to load some my personal emacs config
;; .el files on ~/.emacs.d/my_config/ directory.
;;
;;; 

; run xmodmap command to remap Super_R key to Menu key
(shell-command-to-string "xmodmap ~/.xmodmaprc")

; when open text file then start fill mode


; allow emacs to use system clipboard
(setq x-select-enable-clipboard t) 

; use sdcv to query word
(require 'init-sdcv-mode)
(global-set-key (kbd "C-c d") 'sdcv-search)


(provide 'init-my-config)
