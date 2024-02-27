;; Emacs config
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode 0)

(setq display-line-numbers-type 'relative) 
(global-display-line-numbers-mode)

(add-to-list 'default-frame-alist
             '(font . "Mononoki Nerd Font Mono-12"))

;; Move custom vars set by emacs
(setq custom-file (locate-user-emacs-file "custom-vars.el"))
(load custom-file 'noerror 'nomessage)

;; Move save files
(setq backup-directory-alist `(("." . "~/.saves")))

;; Minibuffer history
(setq history-length 25)
(savehist-mode 1)

;; Don't pop up UI dialogs when prompting
(setq use-dialog-box nil)

;; Revert buffers when changes outside emacs
(global-auto-revert-mode 1)
(setq global-auto-revert-non-file-buffers t)

;; Package management
(require 'package)
(add-to-list 'package-archives
	    '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

;; Load modules
(load "~/.config/emacs/evil.el")
(load "~/.config/emacs/langs.el")
(load "~/.config/emacs/general.el")
(load "~/.config/emacs/magit.el")
(load "~/.config/emacs/theme.el")

(use-package which-key
  :ensure t
  :config
  (which-key-mode))

