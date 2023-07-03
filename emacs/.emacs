
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
 '(highlight-indentation-blank-lines t)
 '(lsp-ui-flycheck-list-position 'right)
 '(package-selected-packages
   '(highlight-indentation smart-shift company-box visual-fill-column-mode org-web-tools py-autopep8 impatient-mode simple-httpd adoc-mode treemacs-magit go-snippets yasnippet protobuf-mode ansible iedit go-playground all-the-icons-completion all-the-icons-dired all-the-icons-ibuffer company flycheck go-mode add-node-modules-path all-the-icons dockerfile-mode exec-path-from-shell lsp-mode lsp-pyright lsp-treemacs lsp-ui magit markdown-mode neotree ox-asciidoc ox-epub projectile smart-mode-line smart-mode-line-powerline-theme treemacs treemacs-icons-dired treemacs-projectile use-package wgrep yaml-mode json-mode nvm terraform-doc terraform-mode))
 '(tool-bar-mode nil)
 '(undo-limit 160000000)
 '(undo-outer-limit 240000000)
 '(undo-strong-limit 240000000)
 '(warning-suppress-types '((comp) (comp))))
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
 '(fill-column-indicator ((t (:stipple nil :foreground "gray30" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal))))
 '(font-lock-comment-face ((((class color) (min-colors 88) (background dark)) (:foreground "dark grey"))))
 '(font-lock-constant-face ((t (:foreground "OliveDrab1" :weight bold))))
 '(font-lock-keyword-face ((t (:foreground "cyan2"))))
 '(font-lock-string-face ((((class color) (min-colors 88) (background dark)) (:foreground "DarkSeaGreen3"))))
 '(fringe ((t (:background "#1f2838"))))
 '(highlight-current-line-face ((t (:background "medium blue"))))
 '(highlight-indentation-current-column-face ((t (:background "#4c5533"))))
 '(highlight-indentation-face ((t (:background "gray34"))))
 '(iedit-occurrence ((t (:background "DarkOrange1" :foreground "white"))))
 '(js2-function-call ((t (:foreground "DeepSkyBlue1"))))
 '(js2-highlight-vars-face ((t (:background "DarkSlateGray4"))))
 '(js2-instance-member ((t (:foreground "DarkOliveGreen2"))))
 '(js2-object-property ((t (:inherit default :foreground "wheat1"))))
 '(linum ((t (:background "gray19" :foreground "burlywood3" :slant italic :height 0.7))))
 '(markup-meta-face ((t (:foreground "gray60" :inverse-video nil :height 140))))
 '(minibuffer-prompt ((t (:foreground "gold1" :weight bold :height 1.2))))
 '(mode-line ((t (:background "black" :foreground "gray60" :inverse-video nil :box (:line-width 2 :color "gray30")))))
 '(neo-dir-link-face ((t (:foreground "aquamarine2" :height 0.9))))
 '(neo-expand-btn-face ((t (:foreground "aquamarine2" :height 0.82))))
 '(neo-file-link-face ((t (:foreground "light yellow" :height 0.88))))
 '(org-level-1 ((t (:inherit outline-1 :extend nil :height 1.4))))
 '(org-level-2 ((t (:inherit outline-2 :extend nil :height 1.2))))
 '(org-level-3 ((t (:inherit outline-3 :extend nil :height 1.1))))
 '(org-level-4 ((t (:inherit outline-4 :extend nil :foreground "lemon chiffon")))))



(windmove-default-keybindings)

(tool-bar-mode 0)
(scroll-bar-mode 0)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))

(setq use-dialog-box nil)


(setq-default tab-width 2)

(desktop-save-mode 1)
(fringe-mode '(16 . 10))
(global-linum-mode 1)
(setq global-auto-revert-mode t)
(setq inhibit-startup-screen t)
(defvar linum-format)
(setq linum-format " %d")
(setq ring-bell-function 'ignore)

(require 'make-mode)
(add-hook 'makefile-mode-hook
  '(lambda()
     (setq indent-tabs-mode t)
   )
)

(setq-default indent-tabs-mode nil)
(add-hook 'dired-mode-hook 'hl-line-mode)
(add-hook 'package-menu-mode-hook 'hl-line-mode)
(add-hook 'Buffer-menu-mode-hook 'hl-line-mode)
(setq confirm-kill-emacs 'y-or-n-p)

(global-set-key (kbd "C-=") 'comment-or-uncomment-region )
(global-set-key (kbd "<f9>") 'compile )


(require 'ido)
(ido-mode 1)
(setq ido-enable-flex-matching t)
(require 'package)


(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq require-final-newline t)
(setq sh-basic-offset 2)
(setq sh-indentation 2)

(use-package lsp-mode
  :ensure t
  :commands (lsp lsp-deferred)
  :hook ((go-mode
          c-mode
          c-or-c++-mode
          c++-mode
          web-mode
          python-mode
          js-mode) . lsp-deferred)
  )


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

(setq byte-compile-warnings '(cl-functions)) ;; removes cl warning

(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
                         (require 'lsp-pyright)))
  ) 


(add-hook 'python-mode-hook 'highlight-indentation-mode)
(add-hook 'python-mode-hook 'smart-shift-mode)

(use-package highlight-indentation :ensure t)

(use-package web-mode
    :mode ("\\.html\\'")
    :config
    (setq web-mode-markup-indent-offset 2)
    (setq web-mode-engines-alist
          '(("django" . "focus/.*\\.html\\'")
            ("ctemplate" . "realtimecrm/.*\\.html\\'"))))

(use-package py-autopep8
  :ensure t
  :config
  (setq py-autopep8-options '("--max-line-length=100" "--aggressive"))
  :hook ( (python-mode) . py-autopep8-mode))



(defun package-reinstall-all-activated-packages ()
  "Refresh and reinstall all activated packages."
  (interactive)
  (package-refresh-contents)
  (dolist (package-name package-activated-list)
    (when (package-installed-p package-name)
      (unless (ignore-errors                   ;some packages may fail to install
                (package-reinstall package-name))
        (warn "Package %s failed to reinstall" package-name)))))


(use-package ansible :ensure t )

(use-package adoc-mode :ensure t )

(use-package all-the-icons :ensure t )

(use-package all-the-icons-completion
  :ensure t
  :config
  (all-the-icons-completion-mode)
  )

(use-package all-the-icons-dired
  :ensure t
  :hook (dired-mode-hook . all-the-icons-dired-mode)
  )

(use-package all-the-icons-ibuffer
  :ensure t
  :hook (ibuffer-mode . all-the-icons-ibuffer-mode)
  )

(use-package company
  :ensure t
  :hook (after-init-hook . global-company-mode)
  )

(use-package dockerfile-mode
  :ensure t
  )

(use-package exec-path-from-shell
  :ensure t
  :config
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-env "GOPATH")
  )

(use-package flycheck
  :ensure t
  :init
  (global-flycheck-mode)
  )



;; Set up before-save hooks to format buffer and add/delete imports.
;; Make sure you don't have other gofmt/goimports hooks enabled.
(defun lsp-go-install-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))

(use-package go-mode
  :ensure t
  :hook (go-mode-hook . lsp-go-install-save-hooks)
  ;; :hook (go-mode-hook . (lambda()
  ;;                         (add-hook 'before-save-hook #'lsp-format-buffer t t)
  ;;                         (add-hook 'before-save-hook #'lsp-organize-imports t t)))
  )

(use-package go-playground :ensure t )

(use-package go-snippets :ensure t )

(use-package iedit :ensure t )

(use-package json-mode :ensure t )

(use-package magit  :ensure t )

(use-package markdown-mode
  :ensure t
  :mode ("\\.md\\'" . gfm-mode)
  :commands (markdown-mode gfm-mode)
  :init
  (defun my-markdown-filter (buffer)
    (princ
     (with-temp-buffer
       (let ((tmp (buffer-name)))
         (set-buffer buffer)
         (set-buffer (markdown tmp))
         (format "<!DOCTYPE html><html><title>Markdown preview</title>
                  <link rel=\"stylesheet\" href = \"https://cdnjs.cloudflare.com/ajax/libs/github-markdown-css/3.0.1/github-markdown.min.css\"/> 
                  <body><article class=\"markdown-body\" 
                  style=\"box-sizing: border-box;min-width: 200px;max-width: 980px;margin: 0 auto;padding: 45px;\">%s 
                  </article></body></html>" (buffer-string))))
     (current-buffer)))

  (defun markdown-live-preview ()
    "Preview markdown."
    (interactive)
    (unless (process-status "httpd")
      (httpd-start))
    (impatient-mode)
    (imp-set-user-filter 'my-markdown-filter)
    (imp-visit-buffer))
  
  :config
  (setq markdown-command "pandoc -t html5")
  )

(use-package simple-httpd
  :ensure t
  :config
  (setq httpd-port 7070)
  )

(use-package impatient-mode
  :ensure t
  :commands impatient-mode
  )

(use-package neotree
  :ensure t
  :config
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
  
  :init
  (global-set-key (kbd "S-<f5>") 'neotree-toggle )
  (global-set-key (kbd "<f5>") 'neotree-find )
  (global-set-key (kbd "C-<f5>") 'neotree-change-root )
  (defun my-neotree-mode-hook ()
    (hl-line-mode)
    (local-set-key (kbd "d") 'neotree-delete-node)
    (local-set-key (kbd "r") 'neotree-rename-node)
    )
  (add-hook 'neotree-mode-hook 'my-neotree-mode-hook)

  )

(use-package nvm :ensure t )
(use-package ox-asciidoc :ensure t )
(use-package ox-epub :ensure t )

(use-package projectile
  :ensure t
  :init
  (projectile-mode +1)
  :bind (:map projectile-mode-map
              ("s-p" . projectile-command-map)
              ("C-c p" . projectile-command-map)))



(use-package protobuf-mode :ensure t )

;; (use-package pyenv-mode
;;   :ensure t
;;   :init
;;   ;;(pyenv-mode)
;;   ;; todo - setup pyenv on linux
;;   )

(use-package smart-mode-line-powerline-theme :ensure t)
  

(use-package smart-mode-line
  :ensure t
  :init
  (sml/setup)
  )

(use-package terraform-doc :ensure t )
(use-package terraform-mode :ensure t )

(use-package treemacs
  :ensure t
  :defer t
  )

(use-package treemacs-projectile
  :after (treemacs projectile)
  :ensure t)

(use-package treemacs-icons-dired
  :hook (dired-mode . treemacs-icons-dired-enable-once)
  :ensure t)

(use-package treemacs-magit
  :after (treemacs magit)
  :ensure t)

(use-package wgrep :ensure t)
(use-package yaml-mode :ensure t)

(use-package yasnippet
  :ensure t
  :config
  (setq yas-snippet-dirs '("~/.emacs.d/snippets/"))
  (yas-global-mode 1))

;; change minibuffer color when active
(add-hook 'minibuffer-setup-hook
          (lambda ()
            (make-local-variable 'face-remapping-alist)
            (add-to-list 'face-remapping-alist '(default (:background "dark blue")))))



(use-package org-web-tools :ensure t)

;; it reads cookie from Chrome, unsafe!
;; (use-package leetcode
;;     :config
;;     (setq leetcode-language "python3")
;; )

(use-package org-appear
  :ensure t
  :hook (org-mode . org-appear-mode)
)

(setq org-startup-indented t
          org-pretty-entities t
          org-hide-emphasis-markers t
          org-startup-with-inline-images t
          org-image-actual-width '(300))

(use-package company-box
  :ensure t
  :hook (company-mode . company-box-mode))


(setq-default fill-column 80)
(setq column-number-mode t)

(use-package smart-shift :ensure t)

(provide '.emacs)
;;; .emacs ends here

