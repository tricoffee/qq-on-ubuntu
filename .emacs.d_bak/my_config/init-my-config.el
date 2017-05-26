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

; set some user custom setup
(defun dotspacemacs/user-config ()
  "This is were you can ultimately override default Spacemacs configuration.
This function is called at the very end of Spacemacs initialization."
  (setq powerline-default-separator 'nil)
  "Set Spacemacs default font to '文泉驿' font"
  dotspacemacs-default-font '("文泉驿等宽微米黑:style=Regular"
                              :size 17
                              :weight normal
                              :width normal
                              :powerline-scale 1.1)

  )


; use sdcv to query word
(require 'init-sdcv-mode)
(global-set-key (kbd "C-c d") 'sdcv-search)


(provide 'init-my-config)
