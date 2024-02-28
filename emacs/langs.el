;; Treesitter and language modes

(use-package tree-sitter
  :ensure t)

(use-package tree-sitter-langs
  :ensure t)

(use-package company
  :ensure t)

(use-package coverlay
  :ensure t)

(use-package origami
  :ensure t)

(use-package graphql-mode
  :ensure t)

(use-package dockerfile-mode
  :ensure t
  :mode "Dockerfile\\'")

(use-package markdown-mode
  :ensure t
  :mode "\\.md\\'")

(use-package nix-mode
  :ensure t
  :mode "\\.nix\\'")

(use-package js2-mode
  :ensure t
  :mode "\\.js\\'")

(use-package typescript-mode
  :ensure t
  :mode "\\.ts\\'")

(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
         (typescript-mode . lsp)
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)

(use-package tsi
  :ensure t
  :straight (:host github :repo "orzechowskid/tsi.el"))

;;(use-package tsx-mode
  ;;:ensure t
  ;;:straight (:host github :repo "orzechowskid/tsx-mode.el" :branch "emacs29")
  ;;:mode "\\.[jt]s[x]?\\'")
