;;; magimacs-treesitter.el -*- lexical-binding: t; -*-

(require 'treesit)

(setq treesit-language-source-alist
  '(
     (clojure "https://github.com/sogaiu/tree-sitter-clojure")
     (go "https://github.com/tree-sitter/tree-sitter-go")
     (gomod "https://github.com/camdencheek/tree-sitter-go-mod")
     (json "https://github.com/tree-sitter/tree-sitter-json")
     (markdown "https://github.com/MDeiml/tree-sitter-markdown" "split_parser" "tree-sitter-markdown/src")
     (meson "https://github.com/Decodetalkers/tree-sitter-meson")
     (toml "https://github.com/tree-sitter/tree-sitter-toml")
   ))

(setq major-mode-remap-alist
  '((conf-toml-mode . toml-ts-mode)
    (js-json-mode . json-ts-mode)))


(use-package clojure-ts-mode
  :defer t
  :straight (clojure-ts-mode :type git
                             :host github
                             :repo "clojure-emacs/clojure-ts-mode"))

(provide 'magimacs-treesitter)
