;;; magimacs-treesitter.el -*- lexical-binding: t; -*-

(require 'treesit)

(setq treesit-language-source-alist
  '(
    (meson "https://github.com/Decodetalkers/tree-sitter-meson")
    (toml "https://github.com/tree-sitter/tree-sitter-toml")
    (json "https://github.com/tree-sitter/tree-sitter-json")
))
; (mapc #'treesit-install-language-grammar (mapcar #'car treesit-language-source-alist))

(setq major-mode-remap-alist
  '(
    (js-json-mode . json-ts-mode)
    (conf-toml-mode . toml-ts-mode)
))

(provide 'magimacs-treesitter)
