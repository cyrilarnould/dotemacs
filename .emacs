;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; General Configuration
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
 '(package-selected-packages
   '(pdf-tools auctex auto-complete yaml-mode format-all lsp-mode tabbar vlf flycheck))
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
;;; Built-in packages
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Word wrapping in text mode
(add-hook 'text-mode-hook 'visual-line-mode)

;; disable image mode for PGM
(add-to-list 'auto-mode-alist '("\\.pgm\\'" . text-mode))

;; Octave Mode for matlab files
(setq auto-mode-alist
      (cons
       '("\\.m$" . octave-mode)
       auto-mode-alist))

;; XML/HTML Mode commenting
(add-hook
  'nxml-mode-hook
  (lambda ()
    (define-key nxml-mode-map "\C-c\C-c" 'comment-region)
    (define-key nxml-mode-map "\C-c\C-u" 'uncomment-region)))

;; hideshow for xml/html
(require 'hideshow)
(require 'nxml-mode)
(add-to-list 'hs-special-modes-alist
             '(nxml-mode "<!--\\|<[^/>]*[^/]>" "-->\\|</[^/>]*[^/]>" "<!--" nil nil))
(add-hook 'nxml-mode-hook 'hs-minor-mode)
(add-hook 'html-mode-hook 'hs-minor-mode)
(define-key nxml-mode-map (kbd "C-c h") 'hs-toggle-hiding)
(define-key html-mode-map (kbd "C-c h") 'hs-toggle-hiding)

;; Truncate-lines for XML/HTML
(add-hook 'nxml-mode-hook 'toggle-truncate-lines)
(add-hook 'html-mode-hook 'toggle-truncate-lines)

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
;;; Archive packages
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'package)
(package-initialize)

;; Automatically install packages if one of them is missing
(unless (and
         (require 'tabbar nil 'noerror)
         (require 'vlf nil 'noerror)
         (require 'yaml-mode nil 'noerror)
         (require 'flycheck nil 'noerror)
         (require 'format-all nil 'noerror)
         (require 'auto-complete nil 'noerror)
         (require 'pdf-tools nil 'noerror)
         (require 'tex-site nil 'noerror) ;; Is actually auctex
         (require 'lsp-mode nil 'noerror))
  (package-refresh-contents)
  (package-install-selected-packages))

;; Tabbar
(require 'tabbar)

;; View large files (vlf)
(require 'vlf)

;; Yaml mode
(require 'yaml-mode)
    (add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(add-hook 'yaml-mode-hook
  '(lambda ()
    (define-key yaml-mode-map "\C-m" 'newline-and-indent)))

;; Flycheck
(require 'flycheck)

;; format-all to beautify code
(require 'format-all)
(define-key nxml-mode-map "\C-c\C-b" 'format-all-buffer)
(define-key html-mode-map "\C-c\C-b" 'format-all-buffer)

;; Auto-Complete
(require 'auto-complete)
(add-hook 'python-mode-hook 'auto-complete-mode)

;; lsp mode
(require 'lsp-mode)
(add-hook 'vhdl-mode-hook
          (lambda () (local-set-key (kbd "C-c C-l") #'lsp)))

;; PDF Tools
(pdf-tools-install)

;; AUCTeX
;; Update PDF buffers after successful LaTeX runs
(add-hook 'TeX-after-compilation-finished-functions #'TeX-revert-document-buffer)
(add-hook 'LaTeX-mode-hook 'auto-complete-mode)
(add-hook 'LaTeX-mode-hook 'reftex-mode)
(add-hook 'LaTeX-mode-hook #'turn-on-flyspell)
(add-hook 'LaTeX-mode-hook 'ac-flyspell-workaround)
(add-hook 'LaTeX-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c C-b") #'align-current)))
