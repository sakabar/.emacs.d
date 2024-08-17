;; テンプレート挿入
(auto-insert-mode)
(setq auto-insert-directory "~/.emacs.d/auto_insert_templates/")

(define-auto-insert "\\.py$" "python_template.py")
(define-auto-insert "\\.rs$" "rust_template.rs")
(define-auto-insert "\\.cpp$" "cpp_template.cpp")

