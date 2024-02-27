;; General.el shortcuts config

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
   "g" 'magit-status-here
   "w" 'evil-window-map
   "b [" 'previous-buffer
   "b ]" 'next-buffer
   "b d" 'kill-current-buffer
   "." 'find-file))
