;;;; key bindings
(defmacro def-my-key (key func)
  `(define-key my-key-minor-mode-map (kbd ,key) ,func))

(defvar my-key-minor-mode-map (make-keymap))

(define-minor-mode my-key-minor-mode
  "A minor mode so that my key settings override others."
  t " my-key" 'my-key-minor-mode-map)

(defun my-minibuffer-setup-hook ()
  (my-key-minor-mode 0))

(my-key-minor-mode 1)
(add-hook 'minibuffer-setup-hook 'my-minibuffer-setup-hook)

(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;;;; the below is some trickery I included because multi term played bad with my shortcuts. If you need it, uncomment it, if not, don't.
;; (when (require 'term nil t) ; only if term can be loaded..
;;   (add-hook 'term-mode-hook (lambda ()
;;                             (define-key term-raw-map (kbd "C-y") 'term-paste)))
;;   (setq term-bind-key-alist
;;         (list (cons "C-c C-c" 'term-interrupt-subjob)
;;               (cons "C-p" 'previous-line)
;;               (cons "C-n" 'next-line)
;;               (cons "M-f" 'term-send-forward-word)
;; 	      (cons "M-b" 'term-send-backward-word)
;;               (cons "C-c C-j" 'term-line-mode)
;;               (cons "C-c C-k" 'term-char-mode)
;;               (cons "M-DEL" 'term-send-backward-kill-word)
;;               (cons "M-d" 'term-send-forward-kill-word)
;;               (cons "C-r" 'term-send-reverse-search-history)
;;               (cons "M-p" 'term-send-raw-meta)
;;               (cons "M-y" 'term-send-raw-meta)
;; 	      (cons "C-u" 'universal-argument)
;;               (cons "C-y" 'term-send-raw))))

(def-my-key "M-x" 'smex)
(def-my-key "M-X" 'smex-major-mode-commands)

(def-my-key "M-n" 'forward-paragraph)
(def-my-key "M-p" 'backward-paragraph)


(def-my-key "C-c t" 'multi-term)
(def-my-key "C-c p" 'run-python)
(def-my-key "C-c g" 'magit-status)
(def-my-key "C-c r" 'rename-buffer)

(def-my-key "<C-right>" 'next-buffer)
(def-my-key "<C-left>" 'previous-buffer)
(def-my-key "C-x k" 'kill-this-buffer)

(def-my-key "C-ø" 'avy-goto-word-or-subword-1)
(def-my-key "C-o" 'ace-window)		;consider putting this on M-o
(def-my-key "M-o" 'ignore)
(def-my-key "C-\\" 'undo)
