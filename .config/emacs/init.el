;;; init.el -*- lexical-binding: t -*-

(add-to-list 'load-path (expand-file-name "magimacs" user-emacs-directory))

(setq inhibit-startup-echo-area-message "jmercan")

(setq initial-major-mode 'fundamental-mode)

(require 'magimacs-core)

(require 'magimacs-ui)

(require 'magimacs-edit)
(require 'magimacs-mail)
(require 'magimacs-org)
(require 'magimacs-project)
(require 'magimacs-treesitter)
(require 'magimacs-vc)
