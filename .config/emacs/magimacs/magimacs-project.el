;; magimacs-project.el -*- lexical-binding: t; -*-

(use-package projectile
  :commands (projecile-command-map)
  :init
  (setq projectile-project-search-path '(("~/code" . 1)))
  :bind-keymap
  ("C-c p" . projectile-command-map))

(provide 'magimacs-project)
