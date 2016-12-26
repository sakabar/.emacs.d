;;Python
(add-hook 'python-mode-hook
  '(lambda ()
    (setq indent-level 4)
    (setq python-indent 4)
    (setq python-indent-offset 4)
    (setq tab-width 4)
    (setq indent-tabs-mode nil)
    ;(define-key (current-local-map) "\C-h" 'python-backspace)
  ))

; インデントはタブではなくスペースを使用
(setq-default indent-tabs-mode nil)

;; (add-hook 'python-mode-hook
;;   '(lambda ()
;;     (define-key python-mode-map "\C-m" 'newline-and-indent)))

