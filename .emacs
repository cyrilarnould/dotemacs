;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Custom
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-auto-save t)
 '(TeX-error-overview-open-after-TeX-run t)
 '(TeX-master nil)
 '(TeX-parse-self t)
 '(TeX-source-correlate-mode t)
 '(TeX-source-correlate-start-server t)
 '(TeX-view-program-selection
   '(((output-dvi style-pstricks)
      "dvips and start")
     (output-dvi "Yap")
     (output-pdf "PDF Tools")
     (output-html "start")))
 '(archive-zip-extract '("7z" "e" "-so"))
 '(column-number-mode t)
 '(company-backends
   '(company-bbdb company-semantic company-cmake company-capf company-clang company-files
                  (company-dabbrev-code company-gtags company-etags company-keywords)
                  company-oddmuse company-dabbrev company-anaconda))
 '(company-dabbrev-downcase nil)
 '(company-idle-delay 0.0)
 '(company-require-match nil)
 '(company-tng-mode t)
 '(csv-align-style 'auto)
 '(csv-separators '("," "	" " "))
 '(cua-mode t nil (cua-base))
 '(eldoc-idle-delay 0)
 '(fit-window-to-buffer-horizontally t)
 '(flycheck-disabled-checkers '(c/c++-clang))
 '(flycheck-emacs-lisp-load-path 'inherit)
 '(flycheck-ghdl-ieee-library "synopsys")
 '(flycheck-global-modes '(not nxml-mode))
 '(flycheck-python-pylint-executable "python")
 '(flyspell-issue-message-flag nil)
 '(format-all-default-formatters
   '(("Assembly" asmfmt)
     ("ATS" atsfmt)
     ("Bazel" buildifier)
     ("BibTeX" emacs-bibtex)
     ("C" clang-format)
     ("C#" clang-format)
     ("C++" clang-format)
     ("Cabal Config" cabal-fmt)
     ("Clojure" zprint)
     ("CMake" cmake-format)
     ("Crystal" crystal)
     ("CSS" prettier)
     ("Cuda" clang-format)
     ("D" dfmt)
     ("Dart" dart-format)
     ("Dhall" dhall)
     ("Dockerfile" dockfmt)
     ("Elixir" mix-format)
     ("Elm" elm-format)
     ("Emacs Lisp" emacs-lisp)
     ("Erlang" efmt)
     ("F#" fantomas)
     ("Fish" fish-indent)
     ("Fortran Free Form" fprettify)
     ("GLSL" clang-format)
     ("Go" gofmt)
     ("GraphQL" prettier)
     ("Haskell" brittany)
     ("HTML" html-tidy)
     ("Java" clang-format)
     ("JavaScript" prettier)
     ("JSON" prettier)
     ("JSON5" prettier)
     ("Jsonnet" jsonnetfmt)
     ("JSX" prettier)
     ("Kotlin" ktlint)
     ("LaTeX" latexindent)
     ("Less" prettier)
     ("Literate Haskell" brittany)
     ("Lua" lua-fmt)
     ("Markdown" prettier)
     ("Nix" nixpkgs-fmt)
     ("Objective-C" clang-format)
     ("OCaml" ocp-indent)
     ("Perl" perltidy)
     ("PHP" prettier)
     ("Protocol Buffer" clang-format)
     ("PureScript" purty)
     ("Python" isort)
     ("R" styler)
     ("Reason" bsrefmt)
     ("ReScript" rescript)
     ("Ruby" rufo)
     ("Rust" rustfmt)
     ("Scala" scalafmt)
     ("SCSS" prettier)
     ("Shell" shfmt)
     ("Solidity" prettier)
     ("SQL" sqlformat)
     ("Svelte" prettier)
     ("Swift" swiftformat)
     ("Terraform" terraform-fmt)
     ("TOML" prettier)
     ("TSX" prettier)
     ("TypeScript" prettier)
     ("V" v-fmt)
     ("Verilog" istyle-verilog)
     ("Vue" prettier)
     ("XML" html-tidy)
     ("YAML" prettier)
     ("Zig" zig)
     ("_Angular" prettier)
     ("_Flow" prettier)
     ("_Gleam" gleam)
     ("_Ledger" ledger-mode)
     ("_Nginx" nginxfmt)
     ("_Snakemake" snakefmt)))
 '(gc-cons-threshold 104857600 nil nil "For better lsp-mode performance")
 '(global-flycheck-mode t)
 '(global-so-long-mode t)
 '(grep-command "grep --exclude-dir=.svn -nry")
 '(grep-use-null-device nil)
 '(guess-TeX-master-from-files-depth 2)
 '(guess-TeX-master-from-files-up 1)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(lsp-headerline-breadcrumb-enable nil)
 '(lsp-keymap-prefix "C-l")
 '(mouse-wheel-scroll-amount-horizontal 5)
 '(native-comp-always-compile t)
 '(native-comp-async-jobs-number 8 nil nil "Will cause 'too many open files' error but simply reopen emacs to recompile")
 '(native-comp-async-query-on-exit t)
 '(native-comp-speed 3)
 '(package-archive-priorities
   '(("melpa" . 1337)
     ("gnu" . 666)
     ("nongnu" . 420)
     ("melpa-stable" . 69)
     ("local" . 42)))
 '(package-archive-upload-base "~/.lisp/archive")
 '(package-archives
   '(("local" . "~/.lisp/archive")
     ("melpa-stable" . "https://stable.melpa.org/packages/")
     ("melpa" . "https://melpa.org/packages/")
     ("gnu" . "https://elpa.gnu.org/packages/")
     ("nongnu" . "https://elpa.nongnu.org/nongnu/")))
 '(package-native-compile t)
 '(package-selected-packages
   '(debbugs clippy xkcd csv-mode py-prof powershell electric-operator company-anaconda anaconda-mode company company-auctex guess-tex-master vivado-mode multi-scratch use-package yaml-mode vlf tabbar pdf-tools lsp-mode format-all flycheck auctex))
 '(pdf-view-display-size 'fit-page)
 '(python-shell-interpreter "python")
 '(reftex-ref-style-default-list '("Default" "Cleveref"))
 '(size-indication-mode t)
 '(tab-always-indent nil)
 '(tab-width 2)
 '(tabbar-mode t nil (tabbar))
 '(tool-bar-mode nil)
 '(truncate-lines t)
 '(use-package-always-defer t)
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
(setenv "PATH" (concat "c:/Program Files/findutils/bin;" (getenv "PATH")))
(setq exec-path (cons "c:/Program Files/findutils/bin/" exec-path))
;; Set default language for hunspell
(setenv "LANG" "en_GB")
;; Set LSP_USE_PLISTS
(setenv "LSP_USE_PLISTS" "t")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Custom functions
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Custom function to update flycheck-ghdl-workdir variable
(defun my-flycheck-ghdl-workdir-update (&rest _args)
  (setq flycheck-ghdl-workdir
        (concat
         (vhdl-compile-directory)
         (vhdl-work-library))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Package management
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Add path to locally downloaded packages
(add-to-list 'load-path "~/.lisp/load")
(byte-recompile-directory "~/.lisp/load" 0)

;; Package manager
(require 'package)

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
  :bind (:map nxml-mode-map
              ("C-c C-c C-c" . comment-or-uncomment-region)
              ("C-c C-b" . format-all-buffer)))

;; HTML Mode
(use-package mhtml-mode
  :bind (:map mhtml-mode-map
              ("C-c C-c C-c" . comment-or-uncomment-region)
              ("C-c C-b" . format-all-buffer)))

;; hideshow for xml/html
(use-package hs-minor-mode
  :init (add-to-list 'hs-special-modes-alist
                     '(nxml-mode "<!--\\|<[^/>]*[^/]>" "-->\\|</[^/>]*[^/]>" "<!--" nil nil))
  :bind (:map hs-minor-mode-map
         ("C-c h t" . hs-toggle-hiding)
         ("C-c h a" . hs-hide-all)
         ("C-c h b" . hs-hide-block)
         ("C-c h l" . hs-hide-level)
         ("C-c s a" . hs-show-all)
         ("C-c s b" . hs-show-block))
  :hook (nxml-mode mhtml-mode))

;; Truncate-lines in nxml-mode/mhtml-mode. Globally enabled, but
;; visual-line-mode from the text-mode hook turns it off again. Turn
;; it back on here.
(use-package simple
  :hook ((nxml-mode . toggle-truncate-lines)
         (mhtml-mode . toggle-truncate-lines)
         (csv-mode . toggle-truncate-lines)))

;; Enable flyspell for latex mode
(use-package flyspell
  :hook ((LaTeX-mode . turn-on-flyspell)))

;; Enable line numbers
(use-package display-line-numbers-mode
  :hook (prog-mode text-mode))

;; RefTeX
(use-package reftex-mode
  :hook LaTeX-mode)

;; Python
(use-package python
  :bind  (:map python-mode-map
               ("C-c C-b" . (lambda () (interactive)
                              (untabify (point-min) (point-max))
                              (delete-trailing-whitespace)
                              (format-all-buffer)))
               ("C-c C-c" . comment-or-uncomment-region))
  :hook
  ((python-mode . (lambda () (setq-local tab-width 4)))))

;; VHDL-mode
(use-package vhdl-mode
  :config
  (advice-add 'vhdl-set-project :after #'my-flycheck-ghdl-workdir-update)
  (advice-add 'vhdl-autoload-project :after #'my-flycheck-ghdl-workdir-update)
  :hook
  (vhdl-mode . my-flycheck-ghdl-workdir-update))

;; Align
(use-package align
  :config
  (delq (assq 'tex-record-break align-rules-list) align-rules-list))

;; sh-script
(use-package sh-script
  :config
  (setq sh-basic-offset tab-width))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Archive packages
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Multi-Scratch
(use-package multi-scratch
  :ensure t)

;; Vivado Mode
(use-package vivado-mode
  :ensure t
  :mode "\\.xdc\\'")

;; Guess TeX master for auctex
(use-package guess-tex-master
  :ensure t)

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
  :ensure t
  :hook
  (python-mode . format-all-ensure-formatter))

;; company for auto-completion
(use-package company
  :ensure t
  :hook ((python-mode . company-mode)
         (LaTeX-mode . company-mode))
  :config (company-tng-mode))

;; LSP mode
(use-package lsp-mode
  :ensure t
  :bind ("C-c l" . lsp))

;; PDF Tools
(use-package pdf-tools
  :ensure t
  :magic ("%PDF" . pdf-view-mode)
  :bind (:map pdf-view-mode-map
         ("S" . fit-window-to-buffer))
  :config (pdf-loader-install))

;; AUCTeX
(use-package latex
  :ensure auctex
  :bind
  (:map LaTeX-mode-map
        ("C-c b" . TeX-command-buffer)
        ("C-c C-b" . (lambda () (interactive)
                       (untabify (point-min) (point-max))
                       (delete-trailing-whitespace)
                       (align-current)))
        ("C-c c" . TeX-command-master)
        ("C-c C-c" . comment-or-uncomment-region))
  :init
  (add-hook 'TeX-after-compilation-finished-functions #'TeX-revert-document-buffer))

;; Auto-complete for auctex
(use-package company-auctex
  :ensure t
  :config (company-auctex-init))

;; Anaconda (code documentation lookup for python)
(use-package anaconda-mode
  :ensure t
  :hook ((python-mode . anaconda-mode)
         (python-mode . anaconda-eldoc-mode))
  :config
  (setq confirm-kill-processes nil))

;; Company-Anaconda (auto-completion for python)
(use-package company-anaconda
  :ensure t)

;; electric-operator for python
(use-package electric-operator
  :ensure t
  :hook (python-mode . electric-operator-mode))

;; Company-Anaconda (auto-completion for python)
(use-package powershell
  :ensure t)

;; Python profiling
(use-package py-prof
  :ensure t
  :hook python-mode)

;; csv-mode
(use-package csv-mode
  :ensure t
  :mode ("\\.wsv\\'")
  :hook ((csv-mode . csv-align-mode)
         (csv-mode . (lambda ()
                       (display-line-numbers-mode 0)))))

;; Browse bugs
(use-package debbugs
  :ensure t)

;; Relevant
(use-package xkcd
  :ensure t)

(use-package clippy
  :ensure t)
