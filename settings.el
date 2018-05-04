(use-package counsel)
;;; makes open file dialogs, etc. more helpful
;; (setq ido-everywhere t)
;; ;; (setq ido-separator "\n")		; "  |  " also works okay
;; (setq ido-enable-flex-matching t)
;; (ido-mode 1)

;; misc. stuff there is 
(setq tab-always-indent 'complete)
(setq sentence-end-double-space nil)

(add-hook 'doc-view-mode-hook 'auto-revert-mode) ; when you are looking at a compiled LaTeX doc, have it refresh when recompiled


;;; hack to prevent emacs from leaving autosave files all over the place
(custom-set-variables
 '(auto-save-file-name-transforms (quote ((".*" "~/.emacs.d/autosaves/\\1" t))))
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/")))))
(make-directory "~/.emacs.d/autosaves/" t)


;;;; aesthetics
(load-theme 'wombat t)
(powerline-default-theme)


(menu-bar-mode -1)			; hides menu bar
(tool-bar-mode -1)			; hides toolbar

(setq inhibit-startup-message t)
(setq initial-scratch-message ";; ---scratchpad---")
;; (setq inhibit-startup-screen t)


(fset 'yes-or-no-p 'y-or-n-p)
(setq confirm-nonexistent-file-or-buffer nil)

;;;;
;;;; stuff you may want to set
;;;;

;; if you keep everything you'd want to work in some other place than $HOME,
;; modify the below to make emacs "start in" some other folder

;; (setq default-directory "~/" )

