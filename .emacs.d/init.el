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
(setq-default cursor-type 'box) ; Tipo do cursor (box, bar ou hbar)

;; Rolagem mais suave
(setq mouse-wheel-scroll-amount '(2 ((shift) . 1)) ; 2 linhas por vez
      mouse-wheel-progressive-speed nil            ; Não acelera a rolagem
      mouse-wheel-follow-mouse 't                  ; Rola a janela sob o mouse
      scroll-step 1)                               ; Rola 1 linha com teclado

;; PACOTES

;; Verifica e inicia o package.el
(require 'package)

;; Definição de repositórios
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("elpa"  . "https://elpa.gnu.org/packages/")))

;; Inicialização do sistemas de pacotes
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; Instalação do use-package
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

;; Instalação do auto-package-update
(use-package auto-package-update
  :custom
  (auto-package-update-interval 7)
  (auto-package-update-prompt-before-update t)
  (auto-package-update-hide-results t)
  :config
  (auto-package-update-maybe)
  (auto-package-update-at-time "20:00"))

;; TEMA

(unless (package-installed-p 'monokai-theme)
  (package-install 'monokai-theme))
(load-theme 'monokai t)

;; FUNCIONALIDADES

;; NEOTREE - Barra lateral de navegação em arquivos
(use-package neotree
  :ensure t)
(global-set-key [f12] 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'ascii 'arrow))
(setq neo-window-fixed-size nil)  ;; Corrige problema ao tentar redimensionar janela do neotree

;; FLYCHECK - Checagem de sintaxe
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode t))

;; DOOM MODELINE - Barra inferior customizada
(use-package nerd-icons
  :ensure t)

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

(use-package ghub
  :ensure t
  :hook
  (after-init . doom-modeline-mode)
  :config
  (setq doom-modeline-github t) ; Whether display the GitHub notifications. It requires `ghub' package.
  (setq doom-modeline-project-name t))

;; VTERM - Emulador de terminal
(use-package vterm
:config
(setq shell-file-name "/bin/zsh"
      vterm-max-scrollback 5000))

;; ATALHOS

;; Atalhos para zoom
(global-set-key (kbd "C-=") 'text-scale-increase) 
(global-set-key (kbd "C--") 'text-scale-decrease)

;; STUFF

;; Código gerado pelo use-package e auto-package-update
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("8dbbcb2b7ea7e7466ef575b60a92078359ac260c91fe908685b3983ab8e20e3f"
     "2b20b4633721cc23869499012a69894293d49e147feeb833663fdc968f240873"
     default))
 '(package-selected-packages
   '(all-the-icons auto-complete auto-package-update catppuccin-theme
                   doom-modeline doom-themes flycheck ghub
                   monokai-theme neotree vterm)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
