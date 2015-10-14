;; ~/.emacs.d/elisp以下全部読み込み
(add-to-list 'load-path "~/.emacs.d/elisp")

;;; (install-elisp "http://www.rubyist.net/~rubikitch/archive/init-loader-x.el")
(require 'init-loader-x)
(init-loader-load "~/.emacs.d/inits")
