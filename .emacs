;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Custom
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-auto-save t)
 '(TeX-parse-self t)
 '(TeX-source-correlate-mode t)
 '(TeX-source-correlate-start-server t)
 '(TeX-view-program-selection
   '(((output-dvi style-pstricks)
      "dvips and start")
     (output-dvi "Yap")
     (output-pdf "PDF Tools")
     (output-html "start")))
 '(ac-auto-show-menu 0.0)
 '(ac-delay 0.0)
 '(ac-disable-faces nil)
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(flycheck-global-modes '(not nxml-mode))
 '(flycheck-python-pylint-executable "python")
 '(gc-cons-threshold 104857600 nil nil "For better lsp-mode performance")
 '(global-display-line-numbers-mode t)
 '(global-flycheck-mode t)
 '(grep-command "grep --exclude-dir=.svn -nry")
 '(grep-use-null-device nil)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(lsp-headerline-breadcrumb-enable nil)
 '(lsp-keymap-prefix "C-l")
 '(native-comp-always-compile t)
 '(native-comp-async-jobs-number 8 nil nil "Will cause 'too many open files' error but simply reopen emacs to recompile")
 '(native-comp-async-query-on-exit t)
 '(native-comp-speed 3)
 '(package-archive-priorities
   '(("gnu" . 666)
     ("MELPA" . 420)
     ("nongnu" . 69)
     ("MELPA Stable" . 42)))
 '(package-archives
   '(("MELPA Stable" . "https://stable.melpa.org/packages/")
     ("MELPA" . "https://melpa.org/packages/")
     ("gnu" . "https://elpa.gnu.org/packages/")
     ("nongnu" . "https://elpa.nongnu.org/nongnu/")))
 '(package-native-compile t)
 '(pdf-view-display-size 'fit-page)
 '(reftex-ref-style-alist
   '(("Default" t
      (("\\ref" 114)
       ("\\Ref" 82)
       ("\\footref" 110)
       ("\\pageref" 112)
       ("\\Cref" 13)
       ("\\cref" 99)))
     ("Varioref" "varioref"
      (("\\vref" 118)
       ("\\Vref" 86)
       ("\\vpageref" 103)))
     ("Fancyref" "fancyref"
      (("\\fref" 102)
       ("\\Fref" 70)))
     ("Hyperref" "hyperref"
      (("\\autoref" 97)
       ("\\autopageref" 117)))
     ("Cleveref" "cleveref"
      (("\\cref" 99)
       ("\\Cref" 67)
       ("\\cpageref" 100)
       ("\\Cpageref" 68)))
     ("AMSmath" "amsmath"
      (("\\eqref" 101)))))
 '(size-indication-mode t)
 '(tab-always-indent nil)
 '(tab-width 2)
 '(tabbar-mode t nil (tabbar))
 '(tool-bar-mode nil)
 '(truncate-lines t)
 '(user-full-name "Cyril Arnould")
 '(user-mail-address "cyril.arnould@outlook.com")
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Basic setup
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; start server
(server-start)

;;Increase the amount of data which Emacs reads from the process (for better lsp-mode performance)
(setq read-process-output-max (* 1024 1024)) ;; 1mb

;; UTF-8
(set-language-environment "UTF-8")

 ;; show path
(setq frame-title-format
      (list (format "%s %%S: %%j " (system-name))
            '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))

;; Do not disable upcase/downcase region
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; Add shortcut for find-file-at-point
(global-set-key (kbd "C-x f") 'find-file-at-point) 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Environment variables
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Add findutils to path
(setenv "PATH" (concat "c:/Program Files/findutils;" (getenv "PATH")))
(setq exec-path (cons "c:/Program Files/findutils/" exec-path))
;; Set default language for hunspell
(setenv "LANG" "en_GB")
;; Set LSP_USE_PLISTS
(setenv "LSP_USE_PLISTS" "t")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Package management
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Add path to locally downloaded packages
(add-to-list 'load-path "~/.lisp/")

;; Package manager
(require 'package)
(package-initialize)

;; Use-package manual installation
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Built-in packages
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Word wrapping in text mode
(use-package visual-line-mode
  :hook text-mode)

;; Fundamental image mode for pgm files
(use-package fundamental-mode
  :mode "\\.pgm\\'")
(use-package image-minor-mode
  :mode "\\.pgm\\'")

;; Octave Mode for matlab files
(use-package octave-mode
  :mode "\\.m\\'")

;; XML Mode
(use-package nxml-mode
  :bind (("C-c C-c" . comment-or-uncomment-region)
         :map nxml-mode-map
         ("C-c C-b" . format-all-buffer)))

;; HTML Mode
(use-package html-mode
  :bind (("C-c C-c" . comment-or-uncomment-region)
         :map html-mode-map
         ("C-c C-b" . format-all-buffer)))

;; hideshow for xml/html
(use-package hs-minor-mode
  :init (add-to-list 'hs-special-modes-alist
                     '(nxml-mode "<!--\\|<[^/>]*[^/]>" "-->\\|</[^/>]*[^/]>" "<!--" nil nil))
  :bind (("C-c h t" . hs-toggle-hiding)
         ("C-c h a" . hs-hide-all)
         ("C-c h b" . hs-hide-block)
         ("C-c h l" . hs-hide-level)
         ("C-c s a" . hs-show-all)
         ("C-c s b" . hs-show-block))
  :hook (nxml-mode html-mode))
  
;; Truncate-lines for XML/HTML
(use-package toggle-truncate-lines
  :hook (nxml-mode html-mode))

;; Enable flyspell for latex mode
(use-package flyspell
  :hook ((LaTeX-mode . turn-on-flyspell)
         (LaTeX-mode . ac-flyspell-workaround)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Locally downloaded packages
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Multi-Scratch
(use-package multi-scratch)

;; Vivado Mode
(use-package vivado-mode
  :mode "\\.xdc\\'")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Archive packages
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Tabbar
(use-package tabbar
  :ensure t)

;; View large files (vlf)
(use-package vlf
  :ensure t)

;; Yaml mode
(use-package yaml-mode
  :ensure t)

;; Flycheck
(use-package flycheck
  :ensure t)

;; format-all to beautify code
(use-package format-all
  :ensure t)

;; Auto-Complete
(use-package auto-complete-mode
  :ensure auto-complete
  :hook (python-mode LaTeX-mode))

;; LSP mode
(use-package lsp-mode
  :ensure t
  :bind ("C-c l" . lsp))

;; PDF Tools
(use-package pdf-tools
  :ensure t
  :config (pdf-tools-install :no-query))

;; AUCTeX
(use-package latex
  :ensure auctex
  :bind (:map LaTeX-mode-map
         ("C-c C-b" . align-current))
  :init  (add-hook 'TeX-after-compilation-finished-functions #'TeX-revert-document-buffer))
(use-package reftex-mode
  :ensure auctex
  :hook LaTeX-mode)
