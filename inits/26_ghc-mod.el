;; ghc-mod

;; (require 'package)
;; (add-to-list 'package-archives
;;          '("melpa" . "http://melpa-stable.milkbox.net/packages/"))
;; (package-initialize)

;; ココはアンコメントするはず… 後でなんとかしようね…
;; 2015/08/24
;; (autoload 'ghc-init "ghc" nil t)
;; (autoload 'ghc-debug "ghc" nil t)
;; (add-hook 'haskell-mode-hook (lambda () (ghc-init) (flymake-mode)))

;(setq haskell-program-name "/usr/bin/ghci")
;(add-hook 'haskell-mode-hook 'inf-haskell-mode) ;; enable
;; (defadvice inferior-haskell-load-file (after change-focus-after-load)
;;   "Change focus to GHCi window after C-c C-l command"
;;   (other-window 1))
;; (ad-activate 'inferior-haskell-load-file)
