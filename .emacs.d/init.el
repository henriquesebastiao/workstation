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

(require 'package) ; Verifica e inicia o package.el

;; Definição de repositórios
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("melpa-stable" . "https://stable.melpa.org/packages/")
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
;; https://github.com/dracula/emacs
(use-package dracula-theme
  :ensure t)
(load-theme 'dracula t)
(setq dracula-enlarge-headings nil) ; Don't change the font size for some headings and titles (default t)

;; DEMAIS FUNCIONALIDADES

;; EMOJIFY - Possibilita exibição de emojis
(use-package emojify
  :ensure t
  :hook (after-init . global-emojify-mode))

;; NEOTREE - Barra lateral de navegação em arquivos
;; https://github.com/jaypei/emacs-neotree
(use-package neotree
  :ensure t)
(global-set-key [f12] 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'ascii 'arrow))
(setq neo-window-fixed-size nil)  ;; Corrige problema ao tentar redimensionar janela do neotree

;; FLYCHECK - Checagem de sintaxe
;; https://github.com/flycheck/flycheck
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode t))

;; PROJECTILE
;; https://github.com/bbatsov/projectile
(use-package projectile
  :ensure t)
(projectile-mode +1)
;; Recommended keymap prefix on Windows/Linux
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; ALL-THE-ICONS
(use-package all-the-icons
  :ensure t)

;; TELA DE BOAS VINDAS CUSTOMIZADA (ver melhor)
;; https://github.com/emacs-dashboard/emacs-dashboard
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook))

(setq dashboard-banner-logo-title "Olá Hick!")
(setq dashboard-startup-banner 'logo)
(setq dashboard-center-content t)
(setq dashboard-vertically-center-content t)
(setq dashboard-display-icons-p t)     ; display icons on both GUI and terminal
(setq dashboard-icon-type 'nerd-icons) ; use `nerd-icons' package
(setq dashboard-projects-backend 'projectile) ; Ativa widget que exibe lista de projetos
(setq dashboard-items '((recents   . 5)
                        (projects  . 5)))

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
  (setq company-show-numbers t)
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

;; TOML
;; (use-package toml-mode
;;   :ensure t)

;; RAINBOW DELIMITERS - Semelhante ao rainbow parentheses
(use-package rainbow-delimiters
  :config
  (rainbow-delimiters-mode))

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

;; HL-TODO - highlight TODO/FIXME/NOTE/HACK
;; https://github.com/tarsius/hl-todo
(use-package hl-todo
  :ensure t
  :init
  (global-hl-todo-mode))
(setq hl-todo-keyword-faces
      '(("TODO"   . "#F8E45C")
        ("FIXME"  . "#ED333B")
        ("NOTE"  . "#57E389")
        ("HACK"   . "#33D17A")))

;; LIGATURES
;; https://github.com/mickeynp/ligature.el
(use-package ligature
  :config
  ;; Enable the "www" ligature in every possible major mode
  (ligature-set-ligatures 't '("www"))
  ;; Enable traditional ligature support in eww-mode, if the
  ;; `variable-pitch' face supports it
  (ligature-set-ligatures 'eww-mode '("ff" "fi" "ffi"))
  ;; Enable all Cascadia Code ligatures in programming modes
  (ligature-set-ligatures 'prog-mode '("|||>" "<|||" "<==>" "<!--" "####" "~~>" "***" "||=" "||>"
                                       ":::" "::=" "=:=" "===" "==>" "=!=" "=>>" "=<<" "=/=" "!=="
                                       "!!." ">=>" ">>=" ">>>" ">>-" ">->" "->>" "-->" "---" "-<<"
                                       "<~~" "<~>" "<*>" "<||" "<|>" "<$>" "<==" "<=>" "<=<" "<->"
                                       "<--" "<-<" "<<=" "<<-" "<<<" "<+>" "</>" "###" "#_(" "..<"
                                       "..." "+++" "/==" "///" "_|_" "www" "&&" "^=" "~~" "~@" "~="
                                       "~>" "~-" "**" "*>" "*/" "||" "|}" "|]" "|=" "|>" "|-" "{|"
                                       "[|" "]#" "::" ":=" ":>" ":<" "$>" "==" "=>" "!=" "!!" ">:"
                                       ">=" ">>" ">-" "-~" "-|" "->" "--" "-<" "<~" "<*" "<|" "<:"
                                       "<$" "<=" "<>" "<-" "<<" "<+" "</" "#{" "#[" "#:" "#=" "#!"
                                       "##" "#(" "#?" "#_" "%%" ".=" ".-" ".." ".?" "+>" "++" "?:"
                                       "?=" "?." "??" ";;" "/*" "/=" "/>" "//" "__" "~~" "(*"
                                       "\\\\" "://"))
  ;; Enables ligature checks globally in all buffers. You can also do it
  ;; per mode with `ligature-mode'.
  (global-ligature-mode t))

;; MINIMAP
;; https://github.com/dengste/minimap
;; (use-package minimap
;;   :ensure t
;;   :init
;;   (minimap-mode))

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
(use-package centaur-tabs
  :ensure t
  :init
  (centaur-tabs-mode t))
(setq centaur-tabs-style "bar")
(setq centaur-tabs-set-icons t)
(setq centaur-tabs-icon-type 'nerd-icons)  ; or 'all-the-icons
(setq centaur-tabs-gray-out-icons 'buffer)
(setq centaur-tabs-set-bar 'under)
(setq centaur-tabs-set-modified-marker nil)

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

;; FUNCTIONS

(defun select-line ()
  (interactive)
  (if (region-active-p)
      (progn
        (forward-line 1)
        (end-of-line))
    (progn
      (end-of-line)
      (set-mark (line-beginning-position)))))


(defun duplicate-line (arg)
  (interactive "*p")
  (setq buffer-undo-list (cons (point) buffer-undo-list))
  (let ((bol (save-excursion (beginning-of-line) (point)))
        eol)
    (save-excursion
      (end-of-line)
      (setq eol (point))
      (let ((line (buffer-substring bol eol))
            (buffer-undo-list t)
            (count arg))
        (while (> count 0)
          (newline)
          (insert line)
          (setq count (1- count)))
        )

      (setq buffer-undo-list (cons (cons eol (point)) buffer-undo-list)))
    )
  (next-line arg))

(defun new-empty-buffer ()
  (interactive)
  (let ((-buf (generate-new-buffer "untitled")))
    (switch-to-buffer -buf)
    (funcall initial-major-mode)
    (setq buffer-offer-save t)))

;; WHICH KEY - Sugere complementos de atalhos
(use-package which-key
  :ensure t
  :config (which-key-mode))

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
                   nord-theme orderless projectile rainbow-delimiters
                   rainbow-mode spacemacs-theme straight toml-mode
                   ultra-scroll vertico vterm-toggle web-mode
                   yasnippet))
 '(package-vc-selected-packages
   '((ultra-scroll :vc-backend Git :url
                   "https://github.com/jdtsmith/ultra-scroll"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
