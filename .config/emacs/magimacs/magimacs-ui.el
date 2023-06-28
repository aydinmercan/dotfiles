;;; magimacs-ui.el -*- lexical-binding: t; -*-

(add-to-list 'default-frame-alist
             '(font . "FantasqueSansM Nerd Font-16"))

(setq use-dialog-box nil)

(setq ring-bell-function 'ignore)

(setq use-short-answers t)

(setq frame-title-format '("%b - Magimacs!")
      icon-title-format frame-title-format)

(setq frame-resize-pixelwise t
      window-resize-pixelwise nil)

(setq inhibit-compacting-font-caches t)

;; avoid fontification while scrolling and typing
(setq jit-lock-stealth-time 1.25
      jit-lock-stealth-nice 0.5
      jit-lock-chunk-size 4096
      jit-lock-defer-time 0.25)

(setq hscroll-margin 2
      hscroll-step 1
      scroll-conservatively 101
      scroll-margin 0
      scroll-preserve-screen-position t
      auto-window-vscroll nil
      mouse-wheel-scroll-amount '(2 ((shift) . hscroll))
      mouse-wheel-scroll-amount-horizontal 2)

(blink-cursor-mode -1)

(setq blink-matching-paren nil)

(setq x-stretch-cursor nil)

(use-package modus-themes
    :init
    (setq modus-themes-italic-constructs t)
    :config
    (load-theme 'modus-operandi-tinted :no-confirm))

(use-package centaur-tabs
    :demand
    :config
    (centaur-tabs-mode t)
    :bind
    ("C-<prior>" . centaur-tabs-backward)
    ("C-<next>" . centaur-tabs-forward))

(use-package doom-modeline
  :config
  (setq doom-modeline-height 45
	doom-modeline-bar-width 5
	)
  :hook
  (after-init . doom-modeline-mode))

(provide 'magimacs-ui)
