;;Rust
(add-to-list 'load-path "~/project/rust-lang/rust-mode/")
(autoload 'rust-mode "rust-mode" nil t)

(require 'rust-mode)

(add-hook 'rust-mode-hook
          (lambda () (setq indent-tabs-mode nil)))

;; なぜか効かない…
;; (setq exec-path (append exec-path '("/Users/sak/.cargo/bin")))

;; (setq rust-format-on-save t)
