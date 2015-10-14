;;zencoding-mode
(add-to-list 'load-path "~/.emacs.d/elisp/zencoding")

(require 'zencoding-mode)
(add-hook 'sgml-mode-hook 'zencoding-mode)
(define-key zencoding-mode-keymap (kbd "C-i") 'zencoding-expand-line)
(define-key zencoding-mode-keymap (kbd "C-j") 'next-line)
