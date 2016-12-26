;; http://d.hatena.ne.jp/cupnes/20130402/1364895193
;; この記事から出ってきた
;; PDF出力

;; http://ama-ch.hatenablog.com/entry/20090129/1233225851
;; (e2psを)『そのままMacでmakeするとエラーが出るので、ps-font.cの14〜52行の行末にバックスラッシュを追加する。』

;; 絶対パスを入れないでもなんとかするには?

;; 出力したPDFが文字化けする。ghostscriptの問題かと思われるが、解決法が分からない。
(setq my-pdfout-command-format "/usr/local/bin/nkf -e | /Users/sak/local/bin/e2ps -a4 -p -nh | /usr/local/bin/ps2pdf - %s")
(defun my-pdfout-region (begin end)
    (interactive "r")
    (shell-command-on-region begin end (format my-pdfout-command-format (read-from-minibuffer "File name:"))))
(defun my-pdfout-buffer ()
    (interactive)
    (my-pdfout-region (point-min) (point-max)))
