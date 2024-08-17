;;C++
(add-hook 'c++-mode-hook
  '(lambda ()
     (c-set-style "cc-mode"))
     (setq indent-tabs-mode nil)
    ;(define-key (current-local-map) "\C-h" 'python-backspace)
  )

