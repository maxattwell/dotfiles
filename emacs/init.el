(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Relative line numbers
;;(global-display-line-numbers-mode 1)
;;(display-line-numbers-mode)
(setq display-line-numbers-type 'relative) 
(global-display-line-numbers-mode)

;; package.el
(require 'package)
(add-to-list 'package-archives
	    '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

;; Install and configure use-package
(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)

;; Load modules
(load "~/.config/emacs/evil.el")
(load "~/.config/emacs/langs.el")

(use-package seq
  :ensure t)

(use-package magit
  :ensure t
  :config
 (define-key magit-mode-map (kbd "M-w") nil))

(use-package general
  :ensure t
  :config

  ;; Set <leader>
  (general-create-definer my-leader-def
    :prefix "SPC")

  ;; <leader> shortcuts
  (my-leader-def
   :keymaps 'normal
   ":" 'execute-extended-command)
  (my-leader-def
   :keymaps 'normal
   "g" 'magit-status-here)
  (my-leader-def
   :keymaps 'normal
   "w" 'evil-window-map)
  (my-leader-def
   :keymaps 'normal
   "." 'find-file))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
