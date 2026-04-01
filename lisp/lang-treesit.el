;; -*- lexical-binding: t; -*-

(setq treesit-language-source-alist
      '((c          . ("https://github.com/tree-sitter/tree-sitter-c"))
        (cpp        . ("https://github.com/tree-sitter/tree-sitter-cpp"))
        (go         . ("https://github.com/tree-sitter/tree-sitter-go"))
        (java       . ("https://github.com/tree-sitter/tree-sitter-java"
                       :source-dir "src"))
        (python     . ("https://github.com/tree-sitter/tree-sitter-python"))
        (bash       . ("https://github.com/tree-sitter/tree-sitter-bash"))
        (cmake      . ("https://github.com/uyha/tree-sitter-cmake"))
        (make       . ("https://github.com/alemuller/tree-sitter-make"))
        (javascript . ("https://github.com/tree-sitter/tree-sitter-javascript"))
        (jsdoc      . ("https://github.com/tree-sitter/tree-sitter-jsdoc"))
        (typescript . ("https://github.com/tree-sitter/tree-sitter-typescript"
                       nil
                       "typescript/src"))
        (json       . ("https://github.com/tree-sitter/tree-sitter-json"))
        (tsx        . ("https://github.com/tree-sitter/tree-sitter-typescript"
                       nil
                       "tsx/src"))
        (html       . ("https://github.com/tree-sitter/tree-sitter-html"))
        (css        . ("https://github.com/tree-sitter/tree-sitter-css"))
        (markdown   . ("https://github.com/ikatyang/tree-sitter-markdown"))
        (toml       . ("https://github.com/tree-sitter/tree-sitter-toml"))
        (yaml       . ("https://github.com/ikatyang/tree-sitter-yaml"))))

(setopt major-mode-remap-alist
        '((c-mode          .  c-ts-mode)
          (c++-mode        .  c++-ts-mode)
          (go-mode         .  go-ts-mode)
          (java-mode       .  java-ts-mode)
          (python-mode     .  python-ts-mode)
          (javascript-mode .  js-ts-mode)
          (js-mode         .  js-ts-mode)
          (typescript-mode .  typescript-ts-mode)
          (yaml-mode       .  yaml-ts-mode)))

(add-to-list 'auto-mode-alist '("\\.ya?ml\\'" . yaml-ts-mode))

(setopt indent-tabs-mode nil
        tab-width 4
        c-ts-mode-indent-offset 4)


(provide 'lang-treesit)
