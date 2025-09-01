;; -*- lexical-binding: t; -*-

(defvar default-emacs--file-name-handler-alist file-name-handler-alist)
(defvar default-emacs--vc-handled-backends vc-handled-backends)

(setq file-name-handler-alist nil
      vc-handled-backends nil)

(add-hook 'emacs-startup-hook
          (lambda ()
            (setq file-name-handler-alist default-emacs--file-name-handler-alist
                  vc-handled-backends default-emacs--vc-handled-backends)))

(menu-bar-mode   -1)
(tool-bar-mode   -1)
(scroll-bar-mode -1)
(tooltip-mode    -1)

