;;; makes open file dialogs, etc. more helpful
(setq ido-everywhere t)
(setq ido-separator "  |  ")
(setq ido-enable-flex-matching t)
(ido-mode 1)

(setq tab-always-indent 'complete)
(setq sentence-end-double-space nil)

(add-hook 'doc-view-mode-hook 'auto-revert-mode)


;;; hack to prevent emacs from leaving autosave files all over the place
(custom-set-variables
 '(auto-save-file-name-transforms (quote ((".*" "~/.emacs.d/autosaves/\\1" t))))
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/")))))
(make-directory "~/.emacs.d/autosaves/" t)


;;;; aesthetics

;; (load-theme 'zenburn t) ; probably unneccessary

(powerline-default-theme)

(menu-bar-mode -1)			; hides menu bar
(tool-bar-mode -1)			; hides toolbar

(setq initial-scratch-message ";; --scratchpad--")
(setq inhibit-startup-screen t)

;;;;
;;;; stuff you need to set
;;;;

;; (setq default-directory "~/" ) ; the folder emacs "starts in"

(fset 'yes-or-no-p 'y-or-n-p)
