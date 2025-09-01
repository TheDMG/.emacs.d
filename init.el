;; -*- lexical-binding: t; -*-

(setq custom-file (locate-user-emacs-file "custom.el"))
(add-hook 'after-init-hook
          (lambda ()
            (load custom-file :no-error-if-file-is-missing)))

;; Package manger
(setq package-archives
      '(("gnu"    . "https://elpa.gnu.org/packages/")
        ("nongnu" . "https://elpa.nongnu.org/nongnu/")
        ("melpa"  . "https://melpa.org/packages/")))

(require 'use-package)
(setq use-package-always-ensure t)

;; UI Settings
(setq inhibit-startup-screen t
      ring-bell-function 'ignore
      make-backup-files nil
      auto-save-default nil
      initial-scratch-message nil
      display-fill-column-indicator-column 80)

(global-display-fill-column-indicator-mode t)
(setq display-line-numbers-type 'relative)

;; Enabling line number for specific modes
(dolist (hook '(prog-mode-hook text-mode-hook conf-mode-hook))
  (add-hook hook #'display-line-numbers-mode))
