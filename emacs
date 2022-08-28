;; load package manager, and the package registry
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; bootstrap use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

;; load evil
(use-package evil
  :demand t
  :ensure t
  :config
  (evil-mode 1))

;; load helm
(use-package helm
  :bind(("M-x" . helm-M-x)
        ("M-f" . helm-find-files))
  :config
  (helm-mode 1))

;; load company-mode
(use-package company
  :hook (after-init . global-company-mode)
  :config
  (setq company-tooltip-align-annotations t
        company-tooltip-limit 20
        company-show-numbers t
        company-idle-delay .2
        company-minimum-prefix-length 1
        ))

;; load projectile
(use-package projectile
  :config
  ;;(setq projectile-cache-file (expand-file-name ".cache/projectile.cache" use-emacs-directory))
  (projectile-mode 1)
  (define-key projectile-mode-map (kbd "C-c C-p") 'projectile-command-map))
(use-package helm-projectile
  :if (functionp 'helm)
  :config
  (helm-projectile-on))

;; load magit
(use-package magit)

;; load flycheck
(use-package flycheck
  :init
  (setq flycheck-emacs-lisp-load-path 'inhert)
  :config
  (global-flycheck-mode))

;; load lsp-mode
(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-c 1")
  :hook((go-mode . lsp)
	(lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)
(use-package lsp-ui
  :commands lsp-ui-mode)
(use-package helm-lsp
  :commands helm-lsp-workspace-symbol)
(use-package dap-mode)
(use-package which-key
  :config
  (which-key-mode))


;; auto generate
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(helm use-package lsp-mode evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
