;; Magit config

(use-package seq
  :ensure t)

(use-package magit
  :ensure t
  :config
 (define-key magit-mode-map (kbd "M-w") nil))

