;;-------------------------------------------------------------------------
;; use emacs original theme
;;-------------------------------------------------------------------------
; (require 'color-theme)
; (autoload 'color-theme-initialize "color-theme-blackboard" t)
; (color-theme-initialize)

;;-------------------------------------------------------------------------
;; author: pluskid
;; 调用 stardict 的命令行程序 sdcv 来查辞典
;; 如果选中了 region 就查询 region 的内容，否则查询当前光标所在的单词
;; 查询结果在一个叫做 *sdcv* 的 buffer 里面显示出来，在这个 buffer 里面
;; 按 q 可以把这个 buffer 放到 buffer 列表末尾，按 d 可以查询单词
;;-------------------------------------------------------------------------
(global-set-key (kbd "C-c d") 'kid-sdcv-to-buffer)
(defun kid-sdcv-to-buffer ()
  (interactive)
  (let ((word (if mark-active
                  (buffer-substring-no-properties (region-beginning) (region-end))
                  (current-word nil t))))
    (setq word (read-string (format "Search the dictionary for (default %s): " word)
                            nil nil word))
    (set-buffer (get-buffer-create "*sdcv*"))
    (buffer-disable-undo)
    (erase-buffer)
    (let ((process (start-process-shell-command "sdcv" "*sdcv*" "sdcv" "-n" word)))
      (set-process-sentinel
       process
       (lambda (process signal)
         (when (memq (process-status process) '(exit signal))
           (unless (string= (buffer-name) "*sdcv*")
             (setq kid-sdcv-window-configuration (current-window-configuration))
             (switch-to-buffer-other-window "*sdcv*")
             (local-set-key (kbd "d") 'kid-sdcv-to-buffer)
             (local-set-key (kbd "q") (lambda ()
                                        (interactive)
                                        (bury-buffer)
                                        (unless (null (cdr (window-list))) ; only one window
                                          (delete-window)))))
           (goto-char (point-min))))))))


;;-------------------------------------------------------------------------
;; other setting
;;-------------------------------------------------------------------------
(setq auto-save-default nil)
(setq make-backup-files nil)
(setq backup-by-copying t)
(setq auto-save-default nil) 

(setq scroll-margin 3
      scroll-conservatively 10000)

(setq eshell-history-size 50)

;;-------------------------------------------------------------------------
;; c code indentation
;;-------------------------------------------------------------------------
(setq c-default-style
    '((c-mode . "k&r")
;      (c++-mode . "k&r")))
      (other . "gnu")))
(setq c-basic-offset 4)



;;-------------------------------------------------------------------------
;; font set
;;-------------------------------------------------------------------------
; (set-default-font "-outline-Courier New-normal-italic-normal-mono-16-*-*-*-c-*-iso8859-1")
; (set-default-font "-unknown-DejaVu Sans Mono-normal-normal-normal-*-16-*-*-*-m-0-iso10646-1")

;;-------------------------------------------------------------------------
;; show paren
;;-------------------------------------------------------------------------
(show-paren-mode t)

;;-------------------------------------------------------------------------
;; mit-scheme
;;-------------------------------------------------------------------------
(setq scheme-program-name  "/usr/local/bin/mit-scheme")

;;-------------------------------------------------------------------------
;; cscope
;;-------------------------------------------------------------------------
; (load-file "~/.emacs.d/xcscope.el")
; (require 'xcscope)
; (setq cscope-do-not-update-database t)

;;-------------------------------------------------------------------------
;; sudo
;;-------------------------------------------------------------------------
(require 'tramp)

;;-------------------------------------------------------------------------
;; basic config
;;-------------------------------------------------------------------------
(global-linum-mode t)

;;-------------------------------------------------------------------------
;; eshell color config
;;-------------------------------------------------------------------------
(require 'ansi-color)
(require 'eshell)
(defun eshell-handle-ansi-color ()
  (ansi-color-apply-on-region eshell-last-output-start
                              eshell-last-output-end))
(add-to-list 'eshell-output-filter-functions 'eshell-handle-ansi-color)
;; This should no longer be necessary in Emacs 23+.


(provide 'init-my-config)
