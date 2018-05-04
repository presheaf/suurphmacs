;; this is a hack I use to make testing this config easier
;; if you want to test this out without messing with your existing setup, uncomment this
(setq user-init-file (or load-file-name (buffer-file-name)))
(setq user-emacs-directory (file-name-directory user-init-file))

;; real init.el starts below here


;; emacs package management
(require 'package)			; require = import
(package-initialize)

(add-to-list 'package-archives
  	     '("melpa-stable" . "https://melpa.org/packages/") t) 
;; (add-to-list 'package-archives           ;; melpa is the dev version of melpa-stable
;; 	       '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
  	     '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives 
	     '("org" . "http://orgmode.org/elpa/") t)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; now we can install the packages we want
(require 'use-package)	     ; use-package = require, but downloads and installs if needed
(setq use-package-always-ensure t)

(require 'iso-transl)			; fixed a bug for me, but probably unneccessary
(use-package powerline)			; looks cool
(use-package multi-term)
(use-package magit)			; git plugin
(use-package avy)			; gives you wings
(use-package ace-window)		; makes woring with multiple windows easy
;; (use-package smex)			; replaces M-x with a allegedly more helpful version
(use-package general)		        ; lets you bind keys in a saner way

(use-package iy-go-to-char)	        ; has to be seen to be believed
(use-package multiple-cursors)	        ; is this real life?
(use-package undo-tree)

;; the below could just be (load "~/.emacs.d/settings.el") etc,
;; but keeping it like this lets me make the config easier to test
(load (concat user-emacs-directory "settings.el"))
(load (concat user-emacs-directory "python.el"))
(load (concat user-emacs-directory "keybinds.el"))

(setq custom-file (concat user-emacs-directory "custom.el"))
(load custom-file)

(use-package ivy :ensure t
  :diminish (ivy-mode . "")
  :bind
  (:map ivy-mode-map
   ;; ("C-'" . ivy-avy)
   ("M-x" . counsel-M-x)
   ("C-x C-f" . counsel-find-file)
   ("C-c v" . ivy-push-view)
   ("C-c V" . ivy-pop-view)
   ;; ("C-c g" . counsel-git) # overlaps with magit-status
   ("C-c k" . counsel-ag)
   ("C-x l" . counsel-locate)


   )
  :config
  (ivy-mode 1)
  ;; add ‘recentf-mode’ and bookmarks to ‘ivy-switch-buffer’.
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t)
  ;; number of result lines to display
  (setq ivy-height 10)
  ;; does not count candidates
  (setq ivy-count-format "")
  ;; no regexp by default
  (setq ivy-initial-inputs-alist nil)
  ;; configure regexp engine.
  (setq ivy-re-builders-alist
	;; allow input not in order
        '((t   . ivy--regex-ignore-order)))
)

(global-undo-tree-mode 1)
