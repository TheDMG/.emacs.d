;; -*- lexical-binding: t; -*-

(use-package org-timer
  :ensure nil
  :bind (("C-c t s" . org-timer-start)
         ("C-c t p" . org-timer-pause-or-continue)
         ("C-c t q" . org-timer-stop)
         ("C-c t t" . org-timer-set-timer)
         ("C-c t 2" . (lambda () (interactive) (org-timer-set-timer 20))))
  :config
  (setopt org-clock-sound (expand-file-name "assets/sounds/alarm.wav" user-emacs-directory)))

(provide 'stopwatch)
