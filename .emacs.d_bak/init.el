;;----------------------------------------------------------------------------
;; set load path
;;----------------------------------------------------------------------------
(add-to-list 'load-path "~/.emacs.d/themes/")
(load-file "~/.emacs.d/init-my-config.el")
;(load-file "~/.emacs.d/init-w3m.el")
;(load-file "~/.emacs.d/themes/color-theme-blackboard.el")

;;----------------------------------------------------------------------------
;; my personal config profile
;;----------------------------------------------------------------------------
;;----------------------------------------------------------------------------
;; Which functionality to enable (use t or nil for true and false)
;;----------------------------------------------------------------------------
(defconst *spell-check-support-enabled* nil)

;;----------------------------------------------------------------------------
;; Bootstrap config
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

;;----------------------------------------------------------------------------
;; My settings
;;----------------------------------------------------------------------------

;; Allow emacs copy to or from other programs
(setq x-select-enable-clipboard t) 
;; Add my config
(require 'init-my-config)

;(require 'init-w3m)


;(require 'color-theme)
; (color-theme-initialize)
;(setq color-theme-initialize t)
;(load-file "~/.emacs.d/themes/color-theme-blackboard.el")

;; Local Variables:
;; coding: utf-8
;; no-byte-compile: t ;; End:
