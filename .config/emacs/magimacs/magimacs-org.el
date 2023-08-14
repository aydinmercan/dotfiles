;;; magimacs-org.el -*- lexical-binding: t; -*-

(use-package org
  :defer t
  :straight (org :type git
                 :host github
                 :repo "emacs-straight/org-mode")
  :init
  (setq org-directory "~/notes"))

(provide 'magimacs-org)
