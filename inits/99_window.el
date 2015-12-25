(defun other-window-or-split (val)
  (interactive)
  (when (one-window-p)
    (split-window-horizontally))
  (other-window val))

;;窓の移動
;; ターミナル内では、"C-."や"C-,"は機能しないとのこと。
;; http://d.hatena.ne.jp/hirose31/20040219/1160403206
(global-set-key (kbd "C-n")
 (lambda ()
  (interactive)
  (other-window-or-split 1)))

(global-set-key (kbd "C-t")
 (lambda ()
  (interactive)
(other-window-or-split -1)))

(global-set-key (kbd "C-q")
 (lambda ()
  (interactive)
  (delete-other-windows)))

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
