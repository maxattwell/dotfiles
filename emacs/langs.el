;; Configs for tree-sitter and languages modes

(use-package tree-sitter
  :ensure t)

(use-package tree-sitter-langs
  :ensure t)

(use-package nix-mode
  :ensure t
  :mode "\\.nix\\'")
