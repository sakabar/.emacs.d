(require 'auto-save-buffers)
(run-with-idle-timer 3 t 'auto-save-buffers)
;; (define-key ctl-x-map "as" 'auto-save-buffers-toggle)
;; (global-set-key "\C-x\C-s" 'auto-save-buffers-toggle)
