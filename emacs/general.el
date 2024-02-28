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

   ;; git
   "g" 'magit-status-here

   ;; buffers
   "b [" 'previous-buffer
   "b ]" 'next-buffer
   "b d" 'kill-current-buffer

   ;; windows
   "w" 'evil-window-map
   "w d" '(lambda ()
             (interactive)
             (delete-window)
             (balance-windows))

   ;; find 
   "." 'find-file
   "SPC" 'project-find-file
   "," 'counsel-switch-buffer))
