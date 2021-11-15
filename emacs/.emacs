
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default))
 '(lsp-ui-flycheck-list-position 'right)
 '(package-selected-packages
   '(ansible iedit go-playground all-the-icons-completion all-the-icons-dired all-the-icons-ibuffer company flycheck go-mode add-node-modules-path adoc-mode all-the-icons dockerfile-mode exec-path-from-shell lsp-mode lsp-pyright lsp-treemacs lsp-ui magit markdown-mode neotree ox-asciidoc ox-epub projectile pyenv-mode pyenv-mode-auto smart-mode-line smart-mode-line-powerline-theme treemacs treemacs-icons-dired treemacs-projectile use-package wgrep yaml-mode json-mode nvm terraform-doc terraform-mode))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 151 :width normal :foundry "DAMA" :family "Ubuntu Mono"))))
 '(company-tooltip ((t (:background "medium blue" :foreground "yellow1"))))
 '(cperl-array-face ((((class color) (background dark)) (:background "black" :foreground "goldenrod" :weight bold))))
 '(cperl-hash-face ((((class color) (background dark)) (:background "black" :foreground "dark salmon" :slant italic :weight bold))))
 '(cursor ((t (:background "goldenrod1"))))
 '(font-lock-comment-face ((((class color) (min-colors 88) (background dark)) (:foreground "dark grey"))))
 '(font-lock-constant-face ((t (:foreground "OliveDrab1" :weight bold))))
 '(font-lock-keyword-face ((t (:foreground "cyan2"))))
 '(font-lock-string-face ((((class color) (min-colors 88) (background dark)) (:foreground "DarkSeaGreen3"))))
 '(fringe ((t (:background "#1f2838"))))
 '(highlight-current-line-face ((t (:background "medium blue"))))
 '(iedit-occurrence ((t (:background "DarkOrange1" :foreground "white"))))
 '(js2-function-call ((t (:foreground "DeepSkyBlue1"))))
 '(js2-highlight-vars-face ((t (:background "DarkSlateGray4"))))
 '(js2-instance-member ((t (:foreground "DarkOliveGreen2"))))
 '(js2-object-property ((t (:inherit default :foreground "wheat1"))))
 '(linum ((t (:background "gray19" :foreground "burlywood3" :slant italic :height 0.7))))
 '(markup-meta-face ((t (:foreground "gray60" :inverse-video nil :height 140))))
 '(minibuffer-prompt ((t (:foreground "gold1" :weight bold :height 1.6))))
 '(mode-line ((t (:background "black" :foreground "gray60" :inverse-video nil :box (:line-width 2 :color "gray30")))))
 '(neo-dir-link-face ((t (:foreground "aquamarine2" :height 0.9))))
 '(neo-expand-btn-face ((t (:foreground "aquamarine2" :height 0.82))))
 '(neo-file-link-face ((t (:foreground "light yellow" :height 0.88)))))



(windmove-default-keybindings)

(tool-bar-mode 0)
(scroll-bar-mode 0)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))

(setq use-dialog-box nil)

(exec-path-from-shell-initialize)
(exec-path-from-shell-copy-env "GOPATH")

(setq-default tab-width 2)

(desktop-save-mode 1)
(fringe-mode '(16 . 10))
(global-linum-mode 1)
(setq global-auto-revert-mode t)
(setq inhibit-startup-screen t)
(defvar linum-format)
(setq linum-format " %d")
(setq ring-bell-function 'ignore)

(add-hook 'makefile-mode-hook
  '(lambda()
     (setq indent-tabs-mode t)
   )
)

(setq-default indent-tabs-mode nil)

;; (add-hook 'neotree-mode-hook 'hl-line-mode)
(add-hook 'dired-mode-hook 'hl-line-mode)
(add-hook 'package-menu-mode-hook 'hl-line-mode)
(add-hook 'buffer-menu-mode-hook 'hl-line-mode)
(setq confirm-kill-emacs 'y-or-n-p)

(global-set-key (kbd "C-=") 'comment-or-uncomment-region )
(global-set-key (kbd "<f9>") 'compile )
(global-set-key (kbd "S-<f5>") 'neotree-toggle )
(global-set-key (kbd "<f5>") 'neotree-find )
(global-set-key (kbd "C-<f5>") 'neotree-change-root )


(defun my-neotree-mode-hook ()
  (hl-line-mode)
  (local-set-key (kbd "d") 'neotree-delete-node)
  (local-set-key (kbd "r") 'neotree-rename-node)
)
(add-hook 'neotree-mode-hook 'my-neotree-mode-hook)

(setq neo-window-width 40)

(setq neo-hidden-regexp-list
      '(
        ".*~$"
        "\\.cs\\.meta$"
        "\\.elc$"
        "\\.pyc$"
        "^#.*#$"
        "^.#"
        "^\\.git"
        "~$"
        ))


(require 'ido)
(ido-mode 1)
(setq ido-enable-flex-matching t)

(require 'package)

(require 'wgrep)

(sml/setup)


(use-package all-the-icons)

(setq sh-basic-offset 2)
(setq sh-indentation 2)

(use-package lsp-mode
  :ensure t
  :commands (lsp lsp-deferred)
  :hook (go-mode . lsp-deferred))

;; Set up before-save hooks to format buffer and add/delete imports.
;; Make sure you don't have other gofmt/goimports hooks enabled.
(defun lsp-go-install-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))
(add-hook 'go-mode-hook #'lsp-go-install-save-hooks)

;; Optional - provides fancier overlays.
(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode
  :config

  (setq lsp-ui-doc-enable t
        lsp-ui-doc-use-childframe t
        lsp-ui-doc-position 'top
        lsp-ui-doc-include-signature t
        lsp-ui-sideline-enable nil
        lsp-ui-flycheck-enable t
        lsp-ui-flycheck-list-position 'right
        lsp-ui-flycheck-live-reporting t
        lsp-ui-peek-enable t
        lsp-ui-peek-list-width 60
        lsp-ui-peek-peek-height 25)
  )

(add-hook 'before-save-hook #'lsp-organize-imports)
(add-hook 'before-save-hook #'lsp-format-buffer)

(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
                         (require 'lsp-pyright)
                         (lsp))))  ; or lsp-deferred

(defun package-reinstall-all-activated-packages ()
  "Refresh and reinstall all activated packages."
  (interactive)
  (package-refresh-contents)
  (dolist (package-name package-activated-list)
    (when (package-installed-p package-name)
      (unless (ignore-errors                   ;some packages may fail to install
                (package-reinstall package-name))
        (warn "Package %s failed to reinstall" package-name)))))
