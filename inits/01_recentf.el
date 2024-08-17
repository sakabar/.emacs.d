;アイドルタイマーが大事らしい
(when (require 'recentf nil t)
  (setq recentf-max-saved-items 1000)
  (setq recentf-exclude '(".recentf"))
  (setq recentf-exclude '("~/Desktop.*/e_motion/idea.txt"))
  ;; (setq recentf-auto-cleanup 10)
  (setq recentf-auto-cleanup 'never)  ;; ブランチ移動した時に履歴が消えてしまうので、履歴の掃除はしない
  (setq recentf-exclude '(".*linuxHome*."))
  (setq recentf-auto-save-timer
        (run-with-idle-timer 60 t 'recentf-save-list))
  (recentf-mode 1))


;; (global-set-key "\C-p" 'recentf-open-files)
(global-set-key "\C-p" 'anything-recentf)

;; recentfのホームディレクトリを"~/"に置換する
(defadvice recentf-open-files (before recentf-abbrev-file-name-adv activate)
  (recentf-cleanup)
  (let ((directory-abbrev-alist `((,(concat "\\`" (getenv "HOME")) . "~"))))
    (setq recentf-list (mapcar #'(lambda (x) (abbreviate-file-name x)) recentf-list))))
