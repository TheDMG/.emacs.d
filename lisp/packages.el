;; -*- lexical-binding: t; -*-

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(setopt use-package-always-ensure t)

;; Installed Packages - (theme packages in ui.el)
(use-package magit
  :defer t)

;; agent-shell: comint shell for LLM coding agents (Claude, Gemini, Codex…) via ACP.
(use-package agent-shell
  :defer t)


(provide 'packages)
