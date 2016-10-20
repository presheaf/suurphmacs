;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives
  	       '("melpa-stable" . "https://melpa.org/packages/") t) ;works
  ;; (add-to-list 'package-archives 
  ;; 	       '("melpa" . "http://melpa.milkbox.net/packages/") t)
  (add-to-list 'package-archives
  	       '("marmalade" . "http://marmalade-repo.org/packages/"))
  (add-to-list 'package-archives 
	       '("org" . "http://orgmode.org/elpa/") t))
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)			; use-package means "if installed, require, if not, install and require)
(setq use-package-always-ensure t)
 

(require 'iso-transl)			; this is require because it's included in emacs

(use-package powerline)
(use-package multi-term)
(use-package smex)
(use-package zenburn-theme)
(use-package magit)
(use-package avy)
(use-package ace-window)


(defun my-after-init-hook ()
  (load "~/.emacs.d/settings.el")
  (load "~/.emacs.d/python.el")
  (load "~/.emacs.d/keybinds.el")
  )


(add-hook 'after-init-hook 'my-after-init-hook)



;;; below this point, there may be a blurb from something called custom. ignore it. :)

