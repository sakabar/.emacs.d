;;YaTeX-mode
(setq auto-mode-alist (cons (cons "\\.tex$" 'yatex-mode) auto-mode-alist))
(setq auto-mode-alist (cons (cons "\\.sty$" 'yatex-mode) auto-mode-alist))
(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)

(setq load-path (cons (expand-file-name "~/.emacs.d/elisp/yatex1.76") load-path))

(setq YaTeX-math-sign-alist-private
     '(
       ("li" "lim")
       ("ln" "lnot")
      ))

;(run-with-idle-timer 1 t 'YaTex-typeset-buffer)
(setq tex-command "platex")

(add-hook ' yatex-mode-hook
 '(
   lambda () (auto-fill-mode -1)
  )
)

;; (defun my-insert-slashes ()
;; (insert "\\"))

;; set YaTeX coding system
(setq YaTeX-kanji-code nil)

;;End of Yatex-mode
