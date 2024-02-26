(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Relative line numbers
(global-display-line-numbers-mode 1)
(display-line-numbers-mode)
(setq display-line-numbers 'relative)

;; package.el
(require 'package)
(add-to-list 'package-archives
	    '("melpa" . "https://melpa.org/package/"))
(package-initialize)
(package-refresh-contents)

;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; Enable Evil
(require 'evil)
(evil-mode 1)

;; Undo-tree for C-r in Evil mode
(require 'undo-tree)



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
