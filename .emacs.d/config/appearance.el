;; APARÊNCIA ;;

;; TEMA
;; https://github.com/dracula/emacs
;; (use-package dracula-theme
;;   :ensure t)
;; (load-theme 'dracula t)
;; (setq dracula-enlarge-headings nil) ; Don't change the font size for some headings and titles (default t)

(use-package vscode-dark-plus-theme
  :ensure t
  :config
  (load-theme 'vscode-dark-plus t))
(setq vscode-dark-plus-render-line-highlight 'line)

;; Customiza a cor da mode-line
(set-face-attribute 'mode-line nil
                    :background "#1D1D1D"
                    :foreground "#A8A8A8"
                    :box "#333333")

;; Customiza a cor da mode-line do buffer inativo
(set-face-attribute 'mode-line-inactive nil
                    :background "#1D1D1D"
                    :foreground "#6E6E6E"
                    :box "#1D1D1D")

;; EMOJIFY - Possibilita exibição de emojis
(use-package emojify
  :ensure t
  :hook (after-init . global-emojify-mode))

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

;; RAINBOW DELIMITERS - Semelhante ao rainbow parentheses
(use-package rainbow-delimiters
  :config
  (rainbow-delimiters-mode))

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

(provide 'appearance)
