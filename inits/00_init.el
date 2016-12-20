;;共通設定
(set-language-environment 'Japanese)
(prefer-coding-system 'utf-8)
(setq default-major-mode 'text-mode)
(setq default-tab-width 2)

(setq scroll-step 1)

;; http://qiita.com/akisute3@github/items/f5ccc2b027a9aaa13fe4
;; これで、クリップボードとEmacsのキルヤンクが共有される
;; 今まではCommand-VでEmacsにペーストしていたが、これからはC-yとなる
;; これは、設定で変えられるかもしれない
(setq x-select-enable-clipboard t)


(set-cursor-color "#00FF00")

(blink-cursor-mode 0)
;; (setq blink-cursor-interval 0.0)
;; (setq blink-cursor-delay 0.0)

(setq default-mode-line-format
 '(
   "%e"
   "-"
   ;mode-line-mule-info
   ;mode-line-client
   mode-line-modified
   ;mode-line-remote
   ;mode-line-frame-identification
   " " ;本来、この空白はいらない
   mode-line-buffer-identification
   " "
   mode-line-position
   ;(vc-mode vc-mode)
   " "
   ;mode-line-modes
   ;(which-func-mode ("" which-func-format "--" ))
   ;(global-mode-string (("--") global-mode-string))
   "-%-"))

;;大文字小文字を区別しない
(setq read-file-name-completion-ignore-case t)

;;右端で折り返す
;;できてる？
(setq truncate-partial-width-windows nil)
;;起動画面を表示しない
(setq inhibit-startup-message t)
;;初期メッセージを抑制する
(setq inhibit-startup-echo-area-message t)


;;~をつくらない
(setq make-backup-files nil)
;;#を作らない
(setq auto-save-default nil)

;; scratchバッファの初期メッセージを消す
;; (setq initial-scratch-message ";;This is scratch Buffer.")
(setq initial-scratch-message "")

;;BEEPを消す
(setq ring-bell-function 'ignore)


;色を付ける
(global-font-lock-mode 1)
(setq font-lock-support-mode 'jit-lock-mode)

;リージョン強調
(transient-mark-mode t)

;カッコ
(show-paren-mode t)


(scroll-bar-mode nil)


;;anti GUI
(tool-bar-mode 0)
;;行番号表示
(setq line-number-mode t)
;;列番号表示
(setq column-number-mode t)

;;ファイルの未尾を分かりやすくする
(setq-default indicate-empty-lines t)


;;最終行に必ず一行挿入する
(setq require-final-newline t)

;;;;タイトルバーにファイル名を表示する
(setq frame-title-format
   (format "emacs@%s : %%b" (system-name)))


;;現在の関数名をモードラインに表示
;(which-function-mode t)

(defun my-open-line ()
  (interactive)
  (move-end-of-line 1)
  ;; (move-beginning-of-line 1)
  (open-line 1)
  (next-line) ;論理行ではなく視覚的行で移動してしまうらしい。
)

(global-set-key "\C-o" 'my-open-line)

;; MavericksでDockからEmacs.appを起動するとカレントディレクトリが"/"になってしまう件への対応
(setq inhibit-splash-screen t)
(defun cd-to-homedir-all-buffers ()
  "Change every current directory of all buffers to the home directory."
  (mapc
   (lambda (buf) (set-buffer buf) (cd (expand-file-name "~"))) (buffer-list)))
(add-hook 'after-init-hook 'cd-to-homedir-all-buffers)

; インデントはタブではなくスペースを使用
(setq-default indent-tabs-mode nil)

;;時刻表示
(display-time-mode 1)

;; その他の設定
(define-key global-map (kbd "C-z") 'undo)
;;(define-key global-map (kbd "C-c ;") 'comment-dwim) ; コメントアウト

;; 別のフレームを作ったり消したりする
(global-set-key "\M-2" 'make-frame)
(global-set-key "\M-0" 'delete-frame)

;; (global-unset-key "\C-x\C-c") ;; joke
;; (global-set-key "\C-x\C-c" 'suspend-frame)

;; http://monoqloapple.blog.fc2.com/blog-entry-17.html
;; フルスクリーンモード
(defun my-mac-toggle-max-window ()
  (interactive)
  (if (frame-parameter nil 'fullscreen)
      (set-frame-parameter nil 'fullscreen nil)
    (set-frame-parameter nil 'fullscreen 'fullboth)))
(global-set-key "\C-cm" 'my-mac-toggle-max-window)

;;行間
(setq-default line-spacing 0)

;; ミニバッファの履歴を保存する
(savehist-mode 1)

;; ミニバッファの履歴の保存数を増やす
(setq history-length 3000)


;; 2015/08/27
;; 最初のバッファ
;; http://qiita.com/catatsuy/items/f9fad90fa1352a4d3161
;; 起動画面で recentf を開く
;; …ではなく、特定のファイルを開く
;; 2016/01/14 必要性が少なくなったのでコメントアウト
;; (add-hook 'after-init-hook
;;   (lambda()
;;     (find-file "~/Dropbox/Plaintext/README.txt")))


;; emacsを終了するときに確認する
(setq confirm-kill-emacs 'y-or-n-p)
