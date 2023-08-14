;;; magimacs-core.el -*- lexical-binding: t; -*-

(set-language-environment 'utf-8)
(set-terminal-coding-system 'utf-8)
(setq locale-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(setq auto-save-default nil
      make-backup-files nil
      backup-inhibited t)

;; Packages

(setq straight-use-package-by-default t
      straight-vc-git-default-clone-depth t
      straight-recipes-gnu-elpa-use-mirror t
      straight-recipes-emacsmirror-use-mirror t)

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)

(use-package gcmh
  :hook
  (after-init . gcmh-mode))

(provide 'magimacs-core)
