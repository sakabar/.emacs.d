(defun other-window-or-split (val)
  (interactive)
  (when (one-window-p)
    (split-window-horizontally))
  (other-window val))

;;窓の移動
(global-set-key (kbd "C-.")
 (lambda ()
  (interactive)
(other-window-or-split 1)))

(global-set-key (kbd "C-,")
 (lambda ()
  (interactive)
(other-window-or-split -1)))

(global-set-key (kbd "C-/")
 (lambda ()
  (interactive)
  (delete-other-windows)))
