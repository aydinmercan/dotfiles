;;; early-init.el -*- lexical-binding: t; -*-

(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(setq package-enable-at-startup nil)

(setq inhibit-startup-message t
      inhibit-splash-screen t
      initial-scratch-message nil
      inhibit-startup-buffer-menu t
      use-dialog-box t
      inhibit-x-resources t)

(setq gc-cons-percentage 0.6
      gc-cons-threshold most-positive-fixnum)

(setq load-prefer-newer noninteractive)
