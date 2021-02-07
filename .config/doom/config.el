;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

(setq user-full-name "Aydin Mercan"
      user-mail-address "aydin@mercan.dev")

;; + `doom-variable-pitch-font'
(setq doom-theme 'doom-one
      doom-font (font-spec :family "Fantasque Sans Mono"
                           :size 16)
      doom-big-font (font-spec :family "Fantasque Sans Mono"
                               :size 22)
      doom-unicode-font (font-spec :family "Noto Sans Mono"
                                   :size 16))

(setq projectile-project-search-path '("~/code"))

(setq org-directory "~/docs/org/")

(setq display-line-numbers-type t)

(add-to-list 'initial-frame-alist '(fullscreen . maximized))

(map! "C-/" 'evil-ex-nohighlight)

;; Switch the two as I use M-x more often
(map! :leader
      :desc "M-x" ";" 'counsel-M-x
      :desc "Eval expression" ":" 'pp-eval-expression)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(use-package! clang-format
  :defer t
  :custom
  (clang-format-style "file"))

(use-package! cmake-mode
  :defer t
  :custom
  (tab-width 4)
  (cmake-tab-width 4))

(use-package! elfeed
  :defer t
  :custom
  (elfeed-db-directory "~/.local/share/elfeed")
  (elfeed-feeds '("http://nullprogram.com/feed/"
                  "https://gru.gq/feed/"
                  "https://lab.whitequark.org/atom.xml"
                  "https://www.schneier.com/feed/atom/"
                  "https://www.relay.fm/cortex/feed"
                  "https://archlinux.org/feeds/news/")))
