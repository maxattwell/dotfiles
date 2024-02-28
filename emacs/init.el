;; Emacs config
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode 0)

(setq display-line-numbers-type 'relative) 

;; Move custom vars set by emacs
(setq custom-file (locate-user-emacs-file "custom-vars.el"))
(load custom-file 'noerror 'nomessage)

;; Move save files
(setq backup-directory-alist
        '(("." . "~/.saves/"))) 
(setq auto-save-file-name-transforms
        `((".*" ,"~/.saves/" t)))

;; Minibuffer history
(setq history-length 25)
(savehist-mode 1)

;; Don't pop up UI dialogs when prompting
(setq use-dialog-box nil)

;; Revert buffers when changes outside emacs
(global-auto-revert-mode 1)
(setq global-auto-revert-non-file-buffers t)

;; Make ESC quit prompts
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

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

(use-package ivy
  :ensure t
  :bind (
	 :map ivy-minibuffer-map
	  ("C-j" . ivy-next-line)
	  ("C-k" . ivy-previous-line)
	 :map ivy-switch-buffer-map
	  ("C-j" . ivy-next-line)
	  ("C-k" . ivy-previous-line))
  :config
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t))
(ivy-mode)

(use-package ivy-posframe
  :ensure t
  :custom-face
  (ivy-posframe-border ((t (:background "#98971a"))))
  :config
  (setq ivy-posframe-border-width 3)
  (setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display))))
(ivy-posframe-mode 1)

(doom-color 'modeline-bg)
