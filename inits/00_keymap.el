;;global-map
(global-set-key "\C-f" 'delete-backward-char)
(global-set-key "\C-h" 'backward-char)
(global-set-key "\C-k" 'previous-line)
(global-set-key "\C-j" 'next-line)
(global-set-key "\C-l" 'forward-char)
(global-set-key "\C-u" 'kill-whole-line)
(global-set-key "\C-b" 'recenter)


;; (makunbound 'overriding-minor-mode-map)
;; code of rubikitch
(define-minor-mode overriding-minor-mode
  "強制的にC-jを割り当てる"             ;説明文字列
  t                                     ;デフォルトで有効にする
  ""                                    ;モードラインに表示しない
  `(
    (,(kbd "C-j") . next-line)
    (,(kbd "C-k") . previous-line)
    (,(kbd "C-c r"). query-replace)
))

;clipboard
(global-set-key "\C-cy" 'clipboard-yank)
(global-set-key "\C-cw" 'clipboard-kill-ring-save)

;; 2015/08/27
;; scratchバッファを開く
(defun switch-to-scratch ()
  (interactive)
  (switch-to-buffer "*scratch*"))
(global-set-key "\C-x\C-b" 'switch-to-scratch)
