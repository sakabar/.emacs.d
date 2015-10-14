;; Aspell
(setq-default ispell-program-name "/usr/local/Cellar/aspell/0.60.6.1/bin/aspell")
(eval-after-load "ispell"
  '(add-to-list 'ispell-skip-region-alist '("[^\000-\377]+")) ;;日本語混じりの文で使う
 )
(global-set-key (kbd "C-M-$") 'ispell-complete-word)

;;自動的にflyspell-modeをオンにするモードの設定
(mapc
   (lambda (hook)
     (add-hook hook
	       '(lambda () (flyspell-mode 1))))
   '(
     ;; yatex-mode-hook
     ;; text-mode-hook
     ))
