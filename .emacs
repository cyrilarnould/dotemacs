;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; General Configuration
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(lsp-keymap-prefix "C-l")
 '(package-selected-packages '(lsp-mode format-all tabbar vlf flycheck))
 '(size-indication-mode t)
 '(tab-always-indent nil)
 '(tab-width 2)
 '(tool-bar-mode nil)
 '(user-full-name "Cyril Arnould")
 '(user-mail-address "arnould@photonfocus.com")
 '(vhdl-clock-edge-condition 'function)
 '(vhdl-compiler "GHDL")
 '(vhdl-electric-mode t)
 '(vhdl-reset-active-high t)
 '(vhdl-stutter-mode t)
 '(vhdl-use-direct-instantiation 'never))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; start server
(server-start)

 ;; show path
(setq frame-title-format
      (list (format "%s %%S: %%j " (system-name))
        '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))
(put 'downcase-region 'disabled nil)

;;; Use global-display-line-numbers-mode instead of linum-mode for better performance
(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))
(setq-default truncate-lines t)

;; Maybe improve garbage collector performance?
(setq gc-cons-threshold-original gc-cons-threshold)
(setq gc-cons-threshold (* 1024 1024 100))

;; grep command
(setq grep-command "grep --exclude-dir=.svn -nry")

;;redefine kp-decimal to . because vhdl-electric-mode messes it up
(define-key global-map [kp-decimal] [?.])

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; PATH
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Add findutils to path
(setenv "PATH" (concat "c:/Program Files/findutils;" (getenv "PATH")))
(setq exec-path (cons "c:/Program Files/findutils/" exec-path))
;; Add modelsim to path
;;(setenv "PATH" (concat "c:/EDA/modeltech_pe_10.5d/win32pe;" (getenv "PATH")))
;;(setq exec-path (cons "c:/EDA/modeltech_pe_10.5d/win32pe/" exec-path))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Mode related changes
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; VHDL mode
(require 'vhdl-mode)
(autoload 'vhdl-mode "vhdl-mode" "VHDL Mode" t)
(setq auto-mode-alist (cons '("\\.vhdl?\\'" . vhdl-mode) auto-mode-alist))

;; disable image mode for PGM
(add-to-list 'auto-mode-alist '("\\.pgm\\'" . text-mode))

;; Loat octave-mode for Matlab files
(setq auto-mode-alist
      (cons
       '("\\.m$" . octave-mode)
       auto-mode-alist))

;; XML wizardry
(add-hook
  'nxml-mode-hook
  (lambda ()
    (define-key nxml-mode-map "\C-c\C-c" 'comment-region)
    (define-key nxml-mode-map "\C-c\C-u" 'uncomment-region)))
;; hide/show xml
(require 'hideshow)
(require 'sgml-mode)
(require 'nxml-mode)
(add-to-list 'hs-special-modes-alist
             '(nxml-mode
               "<!--\\|<[^/>]*[^/]>"
               "-->\\|</[^/>]*[^/]>"

               "<!--"
               sgml-skip-tag-forward
               nil))
(add-hook 'nxml-mode-hook 'hs-minor-mode)
(add-hook 'html-mode-hook 'hs-minor-mode)
(define-key nxml-mode-map (kbd "C-c h") 'hs-toggle-hiding)
(define-key html-mode-map (kbd "C-c h") 'hs-toggle-hiding)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Locally downloaded packages
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.lisp/")

;; Multi-Scratch
(require 'multi-scratch)

;; Vivado mode
(require 'vivado-mode)
(add-to-list 'auto-mode-alist '("\\.xdc\\'" . vivado-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; MELPA packages
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'package)
(add-to-list 'package-archives
             '("MELPA Stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
             '("MELPA" . "https://melpa.org/packages/") t)
(package-initialize)

;; Tabbar
(require 'tabbar)
(tabbar-mode 1)
(put 'upcase-region 'disabled nil)

;; View large files (vlf)
(require 'vlf)

;; Yaml mode
(require 'yaml-mode)
    (add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(add-hook 'yaml-mode-hook
  '(lambda ()
    (define-key yaml-mode-map "\C-m" 'newline-and-indent)))

;; flycheck
(require 'flycheck)
  (add-hook 'after-init-hook #'global-flycheck-mode)
  (add-hook 'nxml-mode-hook  (lambda () (flycheck-mode -1))) ;; Disable in xml mode

;; format-all to beautify code automatically when saving xml
(require 'format-all)
(define-key nxml-mode-map "\C-c\C-b" 'format-all-buffer)
(define-key html-mode-map "\C-c\C-b" 'format-all-buffer)

;; lsp mode
(require 'lsp-mode)
(add-hook 'vhdl-mode-hook #'lsp)
(setq lsp-headerline-breadcrumb-enable nil)
(setq lsp-vhdl-server 'hdl-checker)
