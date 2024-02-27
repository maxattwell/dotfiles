;; Theme config
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
  (setq doom-modeline-hud t))

(use-package nerd-icons
  :ensure t)
;; if missing icons run M-x nerd-icons-install-fonts
