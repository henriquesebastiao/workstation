;; ATALHOS

;; Atalhos para zoom
(global-set-key (kbd "C-=") 'text-scale-increase) 
(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "C-`") 'vterm)
(global-set-key (kbd "C-'") 'vterm)
(global-set-key (kbd "C-<tab>") 'other-window) ; Alterna entre buffers
;; (global-set-key (kbd "C-S-e") 'eval-buffer)
;; (global-set-key (kbd "C-y") 'yas-describe-tables)
;; (global-set-key (kbd "C-<tab>") 'other-window)
(global-set-key (kbd "C-;") 'comment-line)
(global-set-key (kbd "C-l") 'select-line)
(global-set-key (kbd "C-s") 'save-buffer)
;; (global-set-key (kbd "C-S-s") 'write-file)
(global-set-key (kbd "C-a") 'mark-whole-buffer)
;; (global-set-key (kbd "C-n") 'new-empty-buffer)
;; (global-set-key (kbd "C-k") (lambda () (interactive) (kill-buffer (current-buffer))))
(global-set-key (kbd "C-c C-v") 'duplicate-line)
(global-set-key (kbd "C-x C-t") 'projectile-run-vterm)
;; (global-set-key (kbd "C-e") 'flycheck-list-errors)
;; (global-set-key (kbd "C-S-f") 'projectile-grep)

(provide 'shortcuts)
