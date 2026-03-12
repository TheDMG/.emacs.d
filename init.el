;; -*- lexical-binding: t; -*-

(when (version< emacs-version "30.1")
  (error "This config requires Emacs 30.1 or newer, you have %s" emacs-version))


(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'packages)
(require 'lang-treesit)
(require 'lsp)
(require 'ui)
(require 'runner)
(require 'stopwatch)

(add-hook 'emacs-startup-hook
          (lambda ()
            (setq gc-cons-threshold (* 32 1024 1024))
            (setq file-name-handler-alist default-emacs--file-name-handler-alist
                  vc-handled-backends default-emacs--vc-handled-backends)
            (message "Emacs ready in %.2fs with %d GCs."
                     (float-time (time-subtract after-init-time before-init-time))
                     gcs-done)))
