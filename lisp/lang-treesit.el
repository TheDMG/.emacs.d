;; -*- lexical-binding: t; -*-

(defconst dmg/treesit-language-sources
  '((c "https://github.com/tree-sitter/tree-sitter-c")
    (cpp "https://github.com/tree-sitter/tree-sitter-cpp")
    (python "https://github.com/tree-sitter/tree-sitter-python")
    (go "https://github.com/tree-sitter/tree-sitter-go")
    (gomod "https://github.com/camdencheek/tree-sitter-go-mod")
    (yaml "https://github.com/ikatyang/tree-sitter-yaml")))

(setopt major-mode-remap-alist
        '((c-mode . c-ts-mode)
          (c++-mode . c++-ts-mode)
          (python-mode . python-ts-mode)
          (go-mode . go-ts-mode)))

(setopt indent-tabs-mode nil
        tab-width 4
        c-ts-mode-indent-offset 4)


(provide 'lang-treesit)
