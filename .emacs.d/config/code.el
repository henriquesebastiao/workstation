;; FLYCHECK - Checagem de sintaxe
;; https://github.com/flycheck/flycheck
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode t))

;; eglot (lsp) +  company (autocomplete) + flymake (mostra os erros)
(use-package exec-path-from-shell
  :ensure t
  :config
  (when (memq window-system '(mac ns x))
    (exec-path-from-shell-initialize)))

(require 'eglot)

(add-hook 'python-mode-hook 'eglot-ensure)
(add-to-list 'major-mode-remap-alist '(python-mode . python-ts-mode))
(add-to-list 'eglot-server-programs
            '((python-mode python-ts-mode)
            "basedpyright-langserver" "--stdio")) ; Precisa instalar o basedpyright -> pipx install basedpyright
(add-hook 'python-ts-mode-hook 'eglot-ensure)

(use-package company
  :ensure t
  :config
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 2)
  (setq company-show-numbers t)
  (setq company-dabbrev-downcase nil)
  (setq company-dabbrev-ignore-case nil)
  (setq company-dabbrev-code-ignore-case nil))

(add-hook 'after-init-hook 'global-company-mode)

(require 'flymake)

(defun my/flymake-toggle-diagnostics-buffer ()
  (interactive)
  ;; Check if we are in the diagnostics buffer.
  (if (string-search "*Flymake diagnostics" (buffer-name))
      (delete-window)
    (progn
      (flymake-show-buffer-diagnostics)
      (let ((name (flymake--diagnostics-buffer-name)))
        (if (get-buffer name)
            (switch-to-buffer-other-window name)
          (error "No Flymake diagnostics buffer found")
          )))))

(provide 'code)
