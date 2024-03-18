(setq ring-bell-function 'ignore
      scroll-conservatively 101
      scroll-preserve-screen-position 1
      mouse-wheel-follow-mouse t
      pixel-scroll-precision-use-momentum t
      fast-but-imprecise-scrolling t
      jit-lock-defer-time 0
      display-line-numbers 'relative
      inhibit-startup-message t)
(setq-default line-spacing 1)
(global-hl-line-mode t)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(tooltip-mode -1)
(global-display-line-numbers-mode 1)
(load-theme 'modus-vivendi t)
(set-face-attribute 'default nil :font "JetBrains Mono" :height 130)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(set-file-name-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)

(use-package better-defaults
  :straight (better-defaults :type git :host nil :repo "https://git.sr.ht/~technomancy/better-defaults")
  :demand t)

(setq default-directory "~/"
      ;; always follow symlinks when opening files
      vc-follow-symlinks t
      ;; overwrite text when selected, like we expect.
      delete-seleciton-mode t
      ;; quiet startup
      inhibit-startup-message t
      initial-scratch-message nil
      ;; hopefully all themes we install are safe
      custom-safe-themes t
      ;; simple lock/backup file management
      create-lockfiles nil
      backup-by-copying t
      delete-old-versions t
      ;; when quiting emacs, just kill processes
      confirm-kill-processes nil
      ;; ask if local variables are safe once.
      enable-local-variables t
      ;; life is too short to type yes or no
      use-short-answers t
      ;; clean up dired buffers
      dired-kill-when-opening-new-dired-buffer t)

;; use human-readable sizes in dired
(setq-default dired-listing-switches "-alh")

;; always highlight code
(global-font-lock-mode 1)
;; refresh a buffer if changed on disk
(global-auto-revert-mode 1)

(use-package undo-tree
  :demand t
  :config
  (global-undo-tree-mode))
(use-package evil
  :demand t
  :after undo-tree
  :init
  (setq evil-want-integration t
        evil-want-keybinding nil
        evil-want-C-u-scroll t
        evil-want-Y-yank-to-eol t
        evil-split-window-below t
        evil-vsplit-window-right t
        evil-respect-visual-line-mode t
        evil-undo-system 'undo-tree)
  :config
  (evil-mode 1))
(use-package evil-collection
  :demand t
  :after evil
  :config
  (evil-collection-init))
(use-package evil-commentary
  :demand t
  :after evil
  :config
  (evil-commentary-mode 1))
(use-package evil-surround
  :demand t
  :after evil
  :config
  (global-evil-surround-mode 1))
(use-package evil-org
  :demand t
  :after evil org
  :hook (org-mode . evil-org-mode)
  :config
  (add-hook 'evil-org-mode-hook 'evil-org-set-key-theme)
  (require 'evil-org-agenda)
  (evil-org-agenda-set-keys))
(use-package ctrlf)
(use-package magit)
(use-package projectile
  :ensure t
  :init
  (projectile-mode +1)
  :bind (:map projectile-mode-map
              ("C-x p" . projectile-command-map))
  :config
  (setq projectile-auto-discover t
        projectile-project-search-path '("~/dev")))
(use-package projectile-ripgrep
  :after projectile)

(evil-set-leader 'motion (kbd "SPC"))
(evil-define-key 'normal 'global (kbd "<leader>gs") 'magit-status)

(setq treesit-language-source-alist
 '((bash "https://github.com/tree-sitter/tree-sitter-bash")
   (cmake "https://github.com/uyha/tree-sitter-cmake")
   (elisp "https://github.com/Wilfred/tree-sitter-elisp")
   (go "https://github.com/tree-sitter/tree-sitter-go")
   (gomod "https://github.com/camdencheek/tree-sitter-go-mod")
   (dockerfile "https://github.com/camdencheek/tree-sitter-dockerfile")
   (html "https://github.com/tree-sitter/tree-sitter-html")
   (json "https://github.com/tree-sitter/tree-sitter-json")
   (make "https://github.com/alemuller/tree-sitter-make")
   (markdown "https://github.com/ikatyang/tree-sitter-markdown")
   (python "https://github.com/tree-sitter/tree-sitter-python")
   (toml "https://github.com/tree-sitter/tree-sitter-toml")
   (yaml "https://github.com/ikatyang/tree-sitter-yaml")))

(setq major-mode-remap-alist
 '((yaml-mode . yaml-ts-mode)
   (bash-mode . bash-ts-mode)
   (json-mode . json-ts-mode)
   (go-mode . go-ts-mode)
   (python-mode . python-ts-mode)))

(use-package go-mode
  :ensure t)

(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook
  (go-mode . lsp)
  :commands lsp)

(use-package company
  :ensure t
  :pin melpa)
  
