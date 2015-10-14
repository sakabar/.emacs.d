;;Python
(add-hook 'python-mode-hook
  '(lambda ()
    (setq indent-tabs-mode nil)
    (setq indent-level 4)
    (setq python-indent 4)
    (setq python-indent-offset 4)
    (setq tab-width 4)
    ;(define-key (current-local-map) "\C-h" 'python-backspace)
  ))

; インデントはタブではなくスペースを使用
(setq-default indent-tabs-mode nil)

;; (add-hook 'python-mode-hook
;;   '(lambda ()
;;     (define-key python-mode-map "\C-m" 'newline-and-indent)))

