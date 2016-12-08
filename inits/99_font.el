;; Mac用フォント設定
;; http://tcnksm.sakura.ne.jp/blog/2012/04/02/emacs/
;; Mac OS XをMavericksにしたらフォントが変になる。

 ;; 英語
 (set-face-attribute 'default nil
             :family "Menlo" ;; font
             :height 180)    ;; font size

;; 日本語
(set-fontset-font
 nil 'japanese-jisx0208
;; (font-spec :family "Hiragino Mincho Pro")) ;; font
 (font-spec :family "Hiragino Kaku Gothic ProN")) ;; font

;; 半角と全角の比を1:2にしたければ
(setq face-font-rescale-alist
;;        '((".*Hiragino_Mincho_pro.*" . 1.2)))
      '((".*Hiragino_Kaku_Gothic_ProN.*" . 1.2)));; Mac用フォント設定



;;行番号の表示
(global-linum-mode t)
(menu-bar-mode 1)
(tool-bar-mode 0)

;; 拡大と縮小
(global-set-key (kbd "C-M-;") 'text-scale-increase)
(global-set-key (kbd "C-M--") 'text-scale-decrease)
(global-set-key (kbd "C-M-0") '(lambda () (interactive) (text-scale-set 0)))


