;;;; Python-specific stuff


;;; Python mode keybindings

;; the below works well if you use virtualenvs
;; (use-package virtualenvwrapper)
;; (setenv "WORKON_HOME" "/home/karlerik/software/anaconda2/envs")

;; (general-def python-mode-map
;; 	     "C-a"     'python-nav-beginning-of-statement
;; 	     "C-e"     'python-nav-end-of-statement
;; 	     "M-a"     'python-nav-beginning-of-block
;; 	     "M-e"     'python-nav-end-of-block
;; 	     "M-p"     'python-nav-backward-block
;; 	     "M-n"     'python-nav-forward-block
;; 	     "C-M-a"   'python-nav-beginning-of-defun
;; 	     "C-M-e"   'python-nav-end-of-defun
;; 	     ;; "M-b"     'python-nav-backward-defun
;; 	     ;; "M-f"     'python-nav-forward-defun
;; 	     "C-p"     'python-nav-backward-statement
;; 	     "C-n"     'python-nav-forward-statement
;; 	     "C-M-b"   'python-nav-backward-sexp
;; 	     "C-M-f"   'python-nav-forward-sexp
;; 	     "C-M-u"   'python-nav-backward-up-list
;; 	     "C-M-d"   'python-nav-up-list
;; 	     ;; "C-c C-n" 'flycheck-next-error
;; 	     ;; "C-c C-l" 'flycheck-list-errors
;; 	     )

;; modify this if you don't use IPython
(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i")

(defun customize-py-tabs ()
  (setq tab-width 4
        python-indent 4))

;; hooks are functions which are called when some event happens
;; in this case, we are saying "when something enters python-mode, call customize-py-tabs"
(add-hook 'python-mode-hook 'customize-py-tabs)

(use-package elpy)
(elpy-enable)
