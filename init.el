;;; init.el --- Siyang Liu

;;; Commentary:
;;  A minimal init.el for emacs.

;;; Code:

;; package initialize
(require 'package)
(setq package-archives
      '(("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
        ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(setq package-enable-at-startup nil)
(package-initialize)

;; basics
(setq inhibit-startup-message t)        ; no welcome window
(setq make-backup-files nil)            ; no backup~ files
(setq auto-save-default nil)            ; no #auto-save# files
(setq ring-bell-function 'ignore)       ; turn off bell sound
(setq-default indent-tabs-mode nil)     ; use spaces instead of tabs
(electric-pair-mode 1)                  ; auto-pair parentheses
(show-paren-mode 1)                     ; hightlight parentheses
(add-hook 'before-save-hook
          'delete-trailing-whitespace)  ; delete trailing spaces on saving
(setq default-frame-alist
      '((font . "Menlo 14")))           ; set default font

;; enable ido mode
(ido-mode 1)
(ido-everywhere)
(setq ido-enable-flex-matching t)

;;; init.el ends here
