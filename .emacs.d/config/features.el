;; NEOTREE - Barra lateral de navegação em arquivos
;; https://github.com/jaypei/emacs-neotree
(use-package neotree
  :ensure t)
(global-set-key [f12] 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'ascii 'arrow))
(setq neo-window-fixed-size nil)  ;; Corrige problema ao tentar redimensionar janela do neotree

;; PROJECTILE
;; https://github.com/bbatsov/projectile
(use-package projectile
  :ensure t
  :init
  (setq projectile-project-search-path '("~/git/"))
  :config
  ;; I typically use this keymap prefix on macOS
  (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
  ;; On Linux, however, I usually go with another one
  (define-key projectile-mode-map (kbd "C-c C-p") 'projectile-command-map)
  (global-set-key (kbd "C-c p") 'projectile-command-map)
  (projectile-mode +1))

;; DOOM MODELINE - Barra inferior customizada
(use-package nerd-icons
  :ensure t)

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

;; VERTICO - Sugestão de comandos após M-x
(use-package vertico
    :bind (:map vertico-map
                ("C-j" . vertico-next)
                ("C-k" . vertico-previous)
                ("C-f" . vertico-exit)
                :map minibuffer-local-map
                ("M-h" . backward-kill-word))
    :custom
    (vertico-cycle t)
    :init
    (vertico-mode))

;; MARGINALIA - Descrição dos comandos sugeridos por vertico
(use-package marginalia
  :after vertico
  :custom
  (marginalia-annotators '(marginalia-annotators-heavy marginalia-annotators-ligh nil))
  :init
  (marginalia-mode))

;; ORDERLESS - Busca fuzzy com vertico
(use-package orderless
  :config
  (setq completion-styles '(orderless basic)))

;; ULTRA SCROLL
;; https://github.com/jdtsmith/ultra-scroll
(use-package ultra-scroll
  ;:load-path "~/code/emacs/ultra-scroll" ; if you git clone'd instead of using vc
  :vc (:url "https://github.com/jdtsmith/ultra-scroll") ; For Emacs>=30
  :init
  (setq scroll-conservatively 101 ; important!
        scroll-margin 0) 
  :config
  (ultra-scroll-mode 1))

;; TABS
;; https://github.com/ema2159/centaur-tabs
;; (use-package centaur-tabs
;;   :ensure t
;;   :init
;;   (centaur-tabs-mode t))
;; (setq centaur-tabs-style "bar")
;; (setq centaur-tabs-set-icons t)
;; (setq centaur-tabs-icon-type 'nerd-icons)  ; or 'all-the-icons
;; (setq centaur-tabs-gray-out-icons 'buffer)
;; (setq centaur-tabs-set-bar 'under)
;; (setq centaur-tabs-set-modified-marker nil)

;; WEB MODE
(use-package web-mode
  :mode ("\\.phtml\\.tpl\\.html\\.twig\\.html?\\'" . web-mode))

;; MARKDOWN MODE
(use-package markdown-mode
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . gfm-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "pandoc"))

;; VTERM - Emulador de terminal
(use-package vterm
:config
(setq shell-file-name "/bin/zsh"
      vterm-max-scrollback 5000))

;; WHICH KEY - Sugere complementos de atalhos
(use-package which-key
  :ensure t
  :config (which-key-mode))

;; PDF - Viewer
(use-package pdf-tools
  :config
  (pdf-tools-install))

;; Desabilita numeração de linhas em determinados modos
(dolist (mode '(org-mode-hook
                vterm-mode-hook
                pdf-view-mode-hook
                neotree-mode-hook))
  (add-hook mode (lambda() (display-line-numbers-mode 0))))

(provide 'features)
