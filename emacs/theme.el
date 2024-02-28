;; Theme config
;; Fonts
(add-to-list 'default-frame-alist
             '(font . "OverpassM Nerd Font Mono 11"))

;; Use variable width font faces in current buffer
 (defun face-mode-variable ()
   "Set font to a variable width (proportional) fonts in current buffer"
   (interactive)
   (setq buffer-face-mode-face '(:family "Overpass Nerd Font" :height 100 :width semi-condensed))
    (global-display-line-numbers-mode nil)
   (buffer-face-mode))

 ;; Use monospaced font faces in current buffer
 (defun face-mode-fixed ()
   "Sets a fixed width (monospace) font in current buffer"
   (interactive)
   (setq buffer-face-mode-face '(:family "JetBrainsMono Nerd Font" :height 100))
   (buffer-face-mode))

 ;; Set default font faces 
 (add-hook 'prog-mode-hook 'face-mode-fixed)
 (add-hook 'magit-mode-hook 'face-mode-fixed)
 (add-hook 'text-mode-hook 'face-mode-fixed)
 (add-hook 'markdown-mode-hook 'face-mode-fixed)

 (add-hook 'Info-mode-hook 'face-mode-variable)
 (add-hook 'help-mode-hook 'face-mode-variable)

 ;; Use rel line numbers
 (defun set-line-numbers ()
   "Sets a fixed width (monospace) font in current buffer"
   (interactive)
    (global-display-line-numbers-mode 1)
   (buffer-face-mode))

 ;; Set default font faces 
 (add-hook 'prog-mode-hook 'set-line-numbers)
 (add-hook 'text-mode-hook 'set-line-numbers)
 (add-hook 'markdown-mode-hook 'set-line-numbers)

(use-package doom-themes
  :ensure t
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-one t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config))

(use-package circadian
  :ensure t
  :config
  (setq calendar-latitude -43.5)
  (setq calendar-longitude 172.6)
  (setq circadian-themes '((:sunrise . doom-gruvbox-light)
                           (:sunset  . doom-gruvbox)))
  (circadian-setup))

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :config
  (setq doom-modeline-height 25)
  (setq doom-modeline-hud t)
  (setq doom-modeline-bar-width 5)
  (setq doom-modeline-height 30) 
  (setq doom-modeline-buffer-encoding nil)
  (if (facep 'mode-line-active)

      (set-face-attribute 'mode-line-active nil :family "Overpass Nerd Font" :height 110) ; For 29+
    (set-face-attribute 'mode-line nil :family "Overpass Nerd Font" :height 110))
  (set-face-attribute 'mode-line-inactive nil :family "Overpass Nerd Font" :height 110))


(use-package nerd-icons
  :ensure t)
(setq all-the-icons-scale-factor 0.3)
;; if missing icons run M-x nerd-icons-install-fonts
;; Use variable width font faces in current buffer
