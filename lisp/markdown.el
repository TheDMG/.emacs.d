;; -*- lexical-binding: t; -*-

(use-package markdown-mode
  :mode ("\\.md\\'" . gfm-mode)
  :custom
  (markdown-command
   (concat "pandoc -f gfm -t html5 --standalone"
           " --css " (shell-quote-argument
                      (expand-file-name "assets/css/github-markdown.css" user-emacs-directory))
           " -M title="))
  (markdown-hide-markup t)
  (markdown-hide-urls t)
  (markdown-display-remote-images t)
  :hook ((markdown-mode . (lambda () (unless markdown-inline-image-overlays
                                       (markdown-toggle-inline-images))))
         (markdown-mode . visual-line-mode)))

(use-package valign
  :hook (markdown-mode . valign-mode))

(use-package olivetti
  :custom (olivetti-body-width 0.618)
  :hook ((markdown-mode . olivetti-mode)
         (nov-mode . olivetti-mode)))

(provide 'markdown)
