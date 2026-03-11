;; -*- lexical-binding: t; -*-

(use-package doom-themes
  :config
  (load-theme 'doom-gruvbox t))

(set-face-attribute 'default nil :height 140)

(setopt inhibit-startup-screen t
        initial-scratch-message nil
        make-backup-files nil
        auto-save-default nil)

(setq-default fill-column 80)

(defun dmg/prog-mode-defaults ()
  (display-fill-column-indicator-mode 1)
  (display-line-numbers-mode 1))

(add-hook 'prog-mode-hook #'dmg/prog-mode-defaults)

(global-hl-line-mode 1)
(electric-pair-mode 1)
(which-key-mode 1)


(provide 'ui)
