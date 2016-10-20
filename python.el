;;;; Python-specific stuff


;;; Python modekeybindings
(add-hook 'python-mode-hook
	  (lambda ()
	    ;; (flycheck-mode 1)
	    (local-set-key (kbd "RET") 'newline-and-indent)
	    (define-key python-mode-map (kbd "C-a") 'sa-python-nav-beginning-of-statement-special)
	    (define-key python-mode-map (kbd "C-e") 'sa-python-nav-end-of-statement-special)
	    (define-key python-mode-map (kbd "M-a") 'python-nav-beginning-of-block)
	    (define-key python-mode-map (kbd "M-e") 'python-nav-end-of-block)
	    (define-key python-mode-map (kbd "M-p") 'python-nav-backward-block)
	    (define-key python-mode-map (kbd "M-n") 'python-nav-forward-block)
	    (define-key python-mode-map (kbd "C-M-a") 'python-nav-beginning-of-defun)
	    (define-key python-mode-map (kbd "C-M-e") 'python-nav-end-of-defun)
	    (define-key python-mode-map (kbd "M-b") 'python-nav-backward-defun)
	    (define-key python-mode-map (kbd "M-f") 'python-nav-forward-defun)
	    (define-key python-mode-map (kbd "C-p") 'python-nav-backward-statement)
	    (define-key python-mode-map (kbd "C-n") 'python-nav-forward-statement)
	    (define-key python-mode-map (kbd "C-M-b") 'python-nav-backward-sexp)
	    (define-key python-mode-map (kbd "C-M-f") 'python-nav-forward-sexp)
	    (define-key python-mode-map (kbd "C-M-u") 'python-nav-backward-up-list)
	    (define-key python-mode-map (kbd "C-M-d") 'python-nav-up-list)
	    (define-key python-mode-map (kbd "C-c C-n") 'flycheck-next-error)
	    (define-key python-mode-map (kbd "C-c C-l") 'flycheck-list-errors)
	    ))

(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i")

(defun customize-py-tabs ()
  (setq tab-width 4
        python-indent 4))
(add-hook 'python-mode-hook 'customize-py-tabs)
