;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(add-to-list 'initial-frame-alist '(fullscreen . maximized))

(setq user-full-name "Aydin Mercan"
      user-mail-address "aydin@mercan.dev")

(setq doom-unicode-font (font-spec :family "Noto Sans Mono"
                                   :size 22
                                   :weight 'regular)
      doom-unicode-font (font-spec :family "Noto Color Emoji"
                                   :size 22))

(setq doom-theme 'doom-one)


(setq-default indent-tabs-mode nil)


(setq org-directory "~/docs/org/")

;; relative is also an option
(setq display-line-numbers-type t)

(setq projectile-project-search-path '("~/code/"))


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys

(map! "C-/" 'evil-ex-nohighlight)
(map! "M-h" 'centaur-tabs-backward
      "M-l" 'centaur-tabs-forward)
(map! :leader
      ";" 'counsel-M-x
      ":" 'pp-eval-expression)

(use-package! format-all
  :defer t
  :custom
  (clang-format-style "./.clang-format")
  (clang-format-fallback-style "~/.clang-format"))
