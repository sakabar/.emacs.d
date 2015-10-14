(add-hook 'lisp-interaction-mode-hook
  '(lambda ()
    (interactive)
    (define-key lisp-interaction-mode-map (kbd "C-c C-j") 'eval-print-last-sexp)))

