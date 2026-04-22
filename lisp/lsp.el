;; -*- lexical-binding: t; -*-

(dolist (hook '(c-ts-mode-hook
                c++-ts-mode-hook
                python-ts-mode-hook
                go-ts-mode-hook
                java-ts-mode-hook
                js-mode-hook
                js-ts-mode-hook
                typescript-mode-hook
                typescript-ts-mode-hook
                tsx-ts-mode-hook))
  (add-hook hook #'eglot-ensure))

(setopt eglot-events-buffer-config '(:size 0))
(setq read-process-output-max (* 1024 1024))

(setopt completion-preview-accept-on-tab t
        completion-styles '(basic partial-completion flex))

(add-hook 'eglot-managed-mode-hook #'completion-preview-mode)

(fido-vertical-mode 1)

(provide 'lsp)
