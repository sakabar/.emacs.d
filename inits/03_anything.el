;anything.el
(require 'anything-startup)

;; anything
;; https://aki2o.hatenablog.jp/entry/2014/02/23/anything/helm%E3%81%AE%E3%82%B3%E3%83%9E%E3%83%B3%E3%83%89%E5%8B%95%E4%BD%9C%E4%B8%AD%E3%81%AE%E3%82%AD%E3%83%BC%E3%83%90%E3%82%A4%E3%83%B3%E3%83%89%E3%82%92%E7%B0%A1%E5%8D%98%E3%81%AB%E8%A8%AD%E5%AE%9A
(define-key anything-map (kbd "C-j") 'anything-next-line)
(define-key anything-c-buffer-map (kbd "C-j") 'anything-next-line)
(define-key anything-find-files-map (kbd "C-j") 'anything-next-line)

(define-key anything-map (kbd "C-k") 'anything-previous-line)
(define-key anything-c-buffer-map (kbd "C-k") 'anything-previous-line)
(define-key anything-find-files-map (kbd "C-k") 'anything-previous-line)
