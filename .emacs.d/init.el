;; Carrega path de demais configurações
(add-to-list 'load-path "~/.emacs.d/config/")

;; CONFIGURAÇÕES BÁSICAS
(setq inhibit-startup-message t) ; Não exibe buffer de boas vindas

(tool-bar-mode   -1) ; Oculta a barra de ferramentas
(menu-bar-mode   -1) ; Oculta a barra de menus
(scroll-bar-mode -1) ; Oculta a barra de rolagem
(tooltip-mode    -1) ; Oculta dicas
(column-number-mode  t) ; Exibe coluna e linha atual
(global-hl-line-mode t) ; Destaca a linha atual
(global-display-line-numbers-mode t) ; Exibe numeração de linhas

;; Ajustes de comportamento
(setq visible-bell t) ; Alertas visuais
(global-unset-key (kbd "C-z")) ; Desabilita Ctrl+Z (suspend frame)
(delete-selection-mode t)      ; O texto digitado substitui a seleção
(setq-default indent-tabs-mode nil) ; Usar espaços em vez de tabulações
(electric-pair-mode 1) ; Habilita o fechamento de pares
(global-visual-line-mode t) ; Quebras de linha
(set-face-attribute 'default nil :font "Fira Code") ; Define a fonte padrão
(setq-default cursor-type 'bar) ; Tipo do cursor (box, bar ou hbar)

;; Rolagem mais suave
(setq mouse-wheel-scroll-amount '(2 ((shift) . 1)) ; 2 linhas por vez
      mouse-wheel-progressive-speed nil            ; Não acelera a rolagem
      mouse-wheel-follow-mouse 't                  ; Rola a janela sob o mouse
      scroll-step 1)                               ; Rola 1 linha com teclado

(require 'packages)   ;; Configurações de repositórios para instalação de pacotes
(require 'appearance) ;; Configurações de aparência
(require 'features)   ;; Funcionalidades adicionais
(require 'code)       ;; LSP, autocomplete, checagem de sintaxe e erros
(require 'functions)  ;; Definição de funções
(require 'shortcuts)  ;; Atalhos de teclado

;; STUFF
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(all-the-icons auto-complete auto-package-update catppuccin-theme
                   centaur-tabs company corfu dashboard diff-hl
                   doom-modeline doom-themes dracula-theme elpy
                   emmet-mode emojify exec-path-from-shell
                   flycheck-inline ghub gnome-dark-style hl-todo
                   impatient-mode jetbrains-darcula-theme keycast
                   ligature lsp-pyright lsp-ui magit marginalia
                   material-theme minimap monokai-theme neotree
                   nord-theme orderless projectile pulsing-cursor
                   rainbow-delimiters rainbow-mode spacemacs-theme
                   straight toml-mode treemacs treemacs-evil
                   treemacs-icons-dired treemacs-magit treemacs-persp
                   treemacs-projectile treemacs-tab-bar ultra-scroll
                   vertico vterm-toggle web-mode yasnippet))
 '(package-vc-selected-packages
   '((ultra-scroll :vc-backend Git :url
                   "https://github.com/jdtsmith/ultra-scroll"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
