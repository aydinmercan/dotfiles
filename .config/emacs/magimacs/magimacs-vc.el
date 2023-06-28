;;; magimacs-vc.el -*- lexical-binding: t; -*-

(use-package magit
  :defer t)

(use-package forge
  :defer t
  :after magit)

(provide 'magimacs-vc)
