;; ~/.emacs.d/elisp以下全部読み込み

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; (package-initialize)

(add-to-list 'load-path "~/.emacs.d/elisp")

;;; (install-elisp "http://www.rubyist.net/~rubikitch/archive/init-loader-x.el")
(require 'init-loader-x)
(init-loader-load "~/.emacs.d/inits")
