 ;;;; key bindings
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


(defun jump-to-mark ()
  "Jumps to the local mark, respecting the `mark-ring' order.
  This is the same as using \\[set-mark-command] with the prefix argument."
  (interactive)
  (set-mark-command 1))


(general-define-key
 "M-n" 'forward-paragraph
 "M-p" 'backward-paragraph

 "C-c t" 'multi-term
 "C-c p" 'run-python
 "C-c g" 'magit-status
 "C-c r" 'rename-buffer
 

 "<C-right>" 'next-buffer
 "<C-left>" 'previous-buffer
 "C-x k" 'kill-this-buffer

 "C-æ" 'iy-goto
 "C-ø" 'avy-goto-word-or-subword-1

 "C-;" 'iy-go-to-char
 "C-'" 'avy-goto-word-or-subword-1
 "C-o" 'ace-window
 "M-o" 'ignore

  ;; mc/ = multiple cursors
 "C-S-c C-S-c" 'mc/edit-lines
 "C->" 'mc/mark-next-like-this
 "C-<" 'mc/mark-previous-like-this
 "C-c C-<" 'mc/mark-all-like-this
 "M-SPC" 'jump-to-mark

 "C-\\" 'undo
 "C-z" 'undo
 "M-z" 'undo-tree-redo
)
 
 

