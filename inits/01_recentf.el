;アイドルタイマーが大事らしい
(when (require 'recentf nil t)
  (setq recentf-max-saved-items 100)
  (setq recentf-exclude '(".recentf"))
  (setq recentf-auto-cleanup 10)
 ;; (setq recentf-exclude '(".*recentf" ".*howm.*" ".*anything.*"  ".*.aux" ".*/etc/.* " ".*session.*"))
(setq recentf-exclude '(".*linuxHome*."))
  (setq recentf-auto-save-timer
        (run-with-idle-timer 60 t 'recentf-save-list))
  (recentf-mode 1))


(global-set-key "\C-p" 'recentf-open-files)

;; recentfのホームディレクトリを"~/"に置換する
(defadvice recentf-open-files (before recentf-abbrev-file-name-adv activate)
  (recentf-cleanup)
  (let ((directory-abbrev-alist `((,(concat "\\`" (getenv "HOME")) . "~"))))
    (setq recentf-list (mapcar #'(lambda (x) (abbreviate-file-name x)) recentf-list))))

