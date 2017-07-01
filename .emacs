
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
 '(column-number-mode t)
 '(company-auto-complete (quote (quote company-explicit-action-p)))
 '(company-auto-complete-chars (quote (41 46)))
 '(company-idle-delay 0.3)
 '(custom-safe-themes
	 (quote
		("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" default)))
 '(global-company-mode t)
 '(indicate-buffer-boundaries (quote left))
 '(neo-theme (quote icons))
 '(neo-window-width 40)
 '(package-selected-packages
	 (quote
		(go-guru go-rename ztree all-the-icons-dired all-the-icons yaml-mode company-ansible company-go smart-mode-line-powerline-theme smart-mode-line json-mode json-reformat magit mocha add-node-modules-path exec-path-from-shell flycheck go-mode js2-mode neotree)))
 '(save-place t)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(sml/theme (quote dark))
 '(tab-width 2)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 140 :width normal :foundry "nil" :family "Menlo"))))
 '(company-tooltip ((t (:background "medium blue" :foreground "yellow1"))))
 '(cperl-array-face ((((class color) (background dark)) (:background "black" :foreground "goldenrod" :weight bold))))
 '(cperl-hash-face ((((class color) (background dark)) (:background "black" :foreground "dark salmon" :slant italic :weight bold))))
 '(font-lock-comment-face ((((class color) (min-colors 88) (background dark)) (:foreground "dark grey"))))
 '(font-lock-constant-face ((t (:foreground "OliveDrab1" :weight bold))))
 '(font-lock-keyword-face ((t (:foreground "cyan2"))))
 '(font-lock-string-face ((((class color) (min-colors 88) (background dark)) (:foreground "DarkSeaGreen3"))))
 '(fringe ((t (:background "#1f2838"))))
 '(highlight-current-line-face ((t (:background "medium blue"))))
 '(js2-function-call ((t (:foreground "DeepSkyBlue1"))))
 '(js2-highlight-vars-face ((t (:background "DarkSlateGray4"))))
 '(js2-instance-member ((t (:foreground "DarkOliveGreen2"))))
 '(js2-object-property ((t (:inherit default :foreground "wheat1"))))
 '(linum ((t (:background "gray19" :foreground "burlywood3" :slant italic :height 0.7))))
 '(markup-meta-face ((t (:foreground "gray60" :inverse-video nil :height 140))))
 '(neo-dir-link-face ((t (:foreground "aquamarine2" :height 0.9))))
 '(neo-expand-btn-face ((t (:foreground "aquamarine2" :height 0.82))))
 '(neo-file-link-face ((t (:foreground "light yellow" :height 0.88)))))


(desktop-save-mode 1)
(fringe-mode '(16 . 10))
(global-linum-mode 1)
(setq global-auto-revert-mode t)
(setq inhibit-startup-screen t)
(setq linum-format " %d")


(global-set-key (kbd "C-=") 'comment-or-uncomment-region )
(global-set-key (kbd "<f9>") 'compile )

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-env "GOPATH"))


(sml/setup)

(require 'all-the-icons)

(add-hook 'go-mode-hook
					(lambda ()
						(set (make-local-variable 'company-backends) '(company-go))
						(company-mode)))
