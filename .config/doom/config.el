;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(add-to-list 'initial-frame-alist '(fullscreen . maximized))

(setq user-full-name "Aydin Mercan"
      user-mail-address "aydin@mercan.dev")

(setq doom-unicode-font (font-spec :family "Noto Sans Mono"
                                   :size 22
                                   :weight 'regular)
      doom-unicode-font (font-spec :family "Noto Color Emoji"
                                   :size 22))

(setq-default indent-tabs-mode nil)

(setq doom-theme 'doom-one)
(setq org-directory "~/docs/org/"
      org-agenda-files '("~/docs/org/things/inbox.org"
                         "~/docs/org/things/projects.org"))

;; 'relative is also an option
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
;;
(setq-hook! 'cmake-mode-hook +format-with :none)
(setq-hook! 'cmake-mode-hook +format-with-lsp nil)

(map! "C-/" 'evil-ex-nohighlight)
(map! "M-h" 'centaur-tabs-backward
      "M-l" 'centaur-tabs-forward)
(map! :leader
      ";" 'counsel-M-x
      ":" 'pp-eval-expression)

(after! 'projectile-mode
  (projectile-register-project-type 'xilinx-verilog '("*.xpr")))

(use-package! clang-format
  :defer t
  :custom
  (clang-format-style "file"))

(use-package! cmake-mode
  :defer t
  :custom
  (tab-width 4)
  (cmake-tab-width 4))

(use-package! flycheck
  :defer t
  :custom
  (flycheck-verilog-verilator-executable "verilator_bin"))

(use-package! elfeed
  :defer t
  :custom
  (elfeed-db-directory "~/.local/share/elfeed")
  (elfeed-feeds '("http://nullprogram.com/feed/"
                  "https://www.schneier.com/feed/atom/"
                  "https://www.relay.fm/cortex/feed")))
