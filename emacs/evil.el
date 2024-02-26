;; Configss relating to evil mode

(use-package evil
  :ensure t
  :init
  (setq evil-want-keybinding nil)
  (setq evil-want-C-u-scroll 't)
  (setq evil-shift-width 2)
  (setq evil-split-window-below 1)
  (setq evil-vsplit-window-right 1)
  :config
  (evil-set-undo-system 'undo-redo)
  (evil-mode 1))

(use-package evil-escape
  :ensure t
  :config
  (setq evil-escape-key-sequence "jk")
  (setq evil-escape-unordered-key-sequence 1)
  (evil-escape-mode 1))

(use-package evil-collection
  :ensure t
  :config
  (evil-collection-init 'magit))



