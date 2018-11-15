;;------------------------------------------------------------
;; Package Initialize
;;------------------------------------------------------------

(package-initialize)
(setq package-archives
      '(("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
        ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

;;------------------------------------------------------------
;; Basics
;;------------------------------------------------------------

;; Hide welcome message
(setq inhibit-startup-message t)

;; Prevent from generating back-up~ file
(setq make-backup-files nil)

;; Prevent from generating #auto-save# file
(setq auto-save-default nil)

;;------------------------------------------------------------
;; Syntax
;;------------------------------------------------------------

;; Use spaces to indent
(setq-default indent-tabs-mode nil)

;; Delete trailing spaces when saving
(add-hook 'before-save-hook
          'delete-trailing-whitespace)

;;------------------------------------------------------------
;; Visual
;;------------------------------------------------------------

;; Highlight paired parentheses
(show-paren-mode 1)

;; Show relative line numbers
(global-display-line-numbers-mode)
(setq display-line-numbers-type 'relative)

;;------------------------------------------------------------
;; Build-in Modes
;;------------------------------------------------------------

;; Enable ido mode
(ido-mode 1)
(setq ido-enable-flex-matching t)

;; Enable icomplete mode
(icomplete-mode 1)

;;------------------------------------------------------------
;; References
;;------------------------------------------------------------

;; https://github.com/emacs-tw/awesome-emacs

;;------------------------------------------------------------
;; Pakcage Custom Settings
;;------------------------------------------------------------

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (lua-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; init.el ends here.
