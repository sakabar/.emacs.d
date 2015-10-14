;;Scala
(add-to-list 'load-path "~/.emacs.d/elisp/scala-mode2/")
(require 'scala-mode2)

(add-hook 'scala-mode-hook
					(function
					 (lambda ()
						 (seq scala-mode-indent:step 2))))

