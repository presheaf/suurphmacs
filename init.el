
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

(require 'use-package)
(setq use-package-always-ensure t)
 


(use-package powerline)
(use-package multi-term)
;; (use-package iso-transl) ;; prevents <dead-tilde>
(require 'iso-transl)
(use-package smex)

(defun my-after-init-hook ()
  (load "~/.emacs.d/suurphsettings.el")
  (load "~/.emacs.d/suurphpython.el")
  (load "~/.emacs.d/suurphkeybinds.el")
  )


(add-hook 'after-init-hook 'my-after-init-hook)




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-file-name-transforms (quote ((".*" "~/.emacs.d/autosaves/\\1" t))))
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/"))))
 '(package-selected-packages
   (quote
    (magit ace-window solarized-dark zenburn-theme powerline smex use-package multi-term))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
