;; -*- lexical-binding: t; -*-

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(setopt use-package-always-ensure t)

;; Installed Packages - (theme packages in ui.el)
(use-package jinx
  :if (not (eq system-type 'windows-nt))
  :hook (text-mode . jinx-mode)
  :bind ("M-$" . jinx-correct))

(when (eq system-type 'windows-nt)
  (add-hook 'text-mode-hook #'flyspell-mode)
  (global-set-key (kbd "M-$") #'ispell-word))

(use-package magit
  :defer t)

(use-package diff-hl
  :demand t
  :config
  (global-diff-hl-mode)
  (unless (window-system) (diff-hl-margin-mode))
  (fringe-mode '(4 . 0))
  :hook (magit-post-refresh . diff-hl-magit-post-refresh))

;; agent-shell: comint shell for LLM coding agents (Claude, Gemini, Codex…) via ACP.
(use-package agent-shell
  :defer t)

(use-package eat
  :defer t
  :custom
  (eat-kill-buffer-on-exit t)
  :bind ("C-c v" . eat))

(use-package nov
  :mode (("\\.epub\\'" . nov-mode)
         ("\\.epud\\'" . nov-mode))
  :config
  (setq nov-text-width 80))

(use-package pdf-tools
  :magic ("%PDF" . pdf-view-mode)
  :config
  (pdf-loader-install)
  :bind (:map pdf-view-mode-map
              ("x" . pdf-extract-pages)))

(defun pdf-extract-pages (ranges output-file)
  "Extract RANGES (e.g. \"5\", \"2-10\", or \"2-10, 20-30, 1, 22\") from the current PDF to OUTPUT-FILE."
  (interactive
   (let* ((current (number-to-string (pdf-view-current-page)))
          (ranges (read-string (format "Extract pages [default: %s]: " current)
                               nil nil current))
          (output-name (format "%s-p%s.pdf"
                               (file-name-base (buffer-file-name))
                               (replace-regexp-in-string "[, ]+" "_" ranges)))
          (output (read-file-name "Save to: "
                                  (file-name-directory (buffer-file-name))
                                  nil nil output-name)))
     (list ranges output)))
  (let* ((parts (split-string ranges "[, ]+" t))
         (_ (dolist (p parts)
              (unless (string-match "^[0-9]+\\(-[0-9]+\\)?$" p)
                (user-error "Invalid entry: %s — use numbers like 5, or ranges like 2-10" p))))
         (cat-args (mapconcat #'identity parts " ")))
    (unless (executable-find "pdftk")
      (user-error "pdftk not found — install it from https://www.pdflabs.com/tools/pdftk-server/"))
    (let ((input (shell-quote-argument (expand-file-name (buffer-file-name))))
          (output (shell-quote-argument (expand-file-name output-file))))
      (shell-command (format "pdftk %s cat %s output %s" input cat-args output))
      (message "Extracted [%s] → %s" ranges output-file))))


(provide 'packages)
