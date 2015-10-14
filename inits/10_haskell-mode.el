(setq load-path (cons (expand-file-name "~/.emacs.d/elisp/haskell-mode") load-path))
(require 'haskell-mode)
(require 'haskell-cabal)
(add-to-list 'auto-mode-alist '("\\.hs$" . haskell-mode))

;#!/usr/bin/ runghc 用
(add-to-list 'interpreter-mode-alist '("runghc" . haskell-mode))

;#!/usr/bin/ runhaskell 用
(add-to-list 'interpreter-mode-alist '("runhaskell" . haskell-mode))
