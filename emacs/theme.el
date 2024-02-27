;; Theme config
(use-package gruvbox-theme
  :ensure t) 

(use-package circadian
  :ensure t
  :config
  (setq calendar-latitude -43.5)
  (setq calendar-longitude 172.6)
  (setq circadian-themes '((:sunrise . gruvbox-light-medium)
                           (:sunset  . gruvbox-dark-medium)))
  (circadian-setup))
