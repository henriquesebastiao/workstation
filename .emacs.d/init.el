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

;; Altera a pasta onde o emacs irá salvar backups automaticamente
(setq auto-save-file-name-transforms
      `((".*" ,(expand-file-name "~/.emacs.d/auto-saves/") t)))

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
 '(custom-safe-themes
   '("5ec088e25ddfcfe37b6ae7712c9cb37fd283ea5df7ac609d007cafa27dab6c64"
     "d43860349c9f7a5b96a090ecf5f698ff23a8eb49cd1e5c8a83bb2068f24ea563"
     "0f220ea77c6355c411508e71225680ecb3e308b4858ef6c8326089d9ea94b86f"
     "d35afe834d1f808c2d5dc7137427832ccf99ad2d3d65d65f35cc5688404fdf30"
     "c46651ab216eb31e699be1bd5e6df8229b08005b534194c1ea92519b09661d71"
     "9013233028d9798f901e5e8efb31841c24c12444d3b6e92580080505d56fd392"
     "13096a9a6e75c7330c1bc500f30a8f4407bd618431c94aeab55c9855731a95e1"
     "7758a8b8912ef92e8950a4df461a4d510484b11df0d7195a8a3d003965127abc"
     "456697e914823ee45365b843c89fbc79191fdbaff471b29aad9dcbe0ee1d5641"
     "4ade6b630ba8cbab10703b27fd05bb43aaf8a3e5ba8c2dc1ea4a2de5f8d45882"
     "014cb63097fc7dbda3edf53eb09802237961cbb4c9e9abd705f23b86511b0a69"
     "0325a6b5eea7e5febae709dab35ec8648908af12cf2d2b569bedc8da0a3a81c1"
     "4b6cc3b60871e2f4f9a026a5c86df27905fb1b0e96277ff18a76a39ca53b82e1"
     "aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8"
     "8d3ef5ff6273f2a552152c7febc40eabca26bae05bd12bc85062e2dc224cde9a"
     "34cf3305b35e3a8132a0b1bdf2c67623bc2cb05b125f8d7d26bd51fd16d547ec"
     "a8e721dc14961b37d513b53f5f688c39f5d20b86a2e1f6142eb6c730f2ddd86f"
     default))
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
                   vertico vscode-dark-plus-theme vterm-toggle
                   web-mode yasnippet))
 '(package-vc-selected-packages
   '((ultra-scroll :vc-backend Git :url
                   "https://github.com/jdtsmith/ultra-scroll"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
