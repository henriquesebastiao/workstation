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

(provide 'packages)
