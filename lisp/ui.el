;; -*- lexical-binding: t; -*-

(use-package doom-themes
  :defer t)

(use-package ef-themes
  :config
  (load-theme 'ef-dark t))

;;(use-package ship-at-sea-theme
;;  :defer t
;;  :vc (:url "https://github.com/TheDMG/ship-at-sea-theme"))

(set-face-attribute 'default nil :family "Fira Code" :height 100)

(setq-default line-spacing 0.1)

(setopt inhibit-startup-screen t
        initial-scratch-message nil
        make-backup-files nil
        auto-save-default nil)

(setq-default fill-column 80
              tab-width 4
              indent-tabs-mode nil)

(defun dmg/prog-mode-defaults ()
  (display-fill-column-indicator-mode 1)
  (display-line-numbers-mode 1))

(add-hook 'prog-mode-hook #'dmg/prog-mode-defaults)

;; (global-hl-line-mode 1)
(electric-pair-mode 1)
(which-key-mode 1)


(provide 'ui)
