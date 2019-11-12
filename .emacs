
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; package.el ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'package)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package)
  (setq use-package-always-ensure t))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; local config ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; auto complete
(use-package auto-complete
  :config
  (require 'auto-complete-config))
(with-eval-after-load 'auto-complete-config
  (ac-config-default)
  (global-auto-complete-mode t)
  (ac-set-trigger-key "TAB")
  (setq ac-use-menu-map t))

; anthy
;(when (locate-library "egg")
;  (setq default-input-method "japanese-egg-anthy"))
; mozc
(when (locate-library "mozc")
  (require 'mozc)
  (setq default-input-method "japanese-mozc"))
; IME key 
(global-set-key "\C-o" 'toggle-input-method)
; mew 
(setq mew-mail-path "~/.Mail")
(setq mew-signature-insert-last t)

;; encoding
;; change locale UTF-8
(set-locale-environment nil)
(set-language-environment "Japanese")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(prefer-coding-system 'utf-8)
(set-default 'buffer-file-coding-system 'utf-8-with-signature)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; local config ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; don't show startup message
(setq inhibit-startup-message t)
;; no tool and menu bar 
(tool-bar-mode 0)
(menu-bar-mode 0)
;; theme
(load-theme 'manoj-dark t)
;; compile scroll
(setq compilation-scroll-output t)
;; show line number
(global-linum-mode t)
(setq linum-format "%3d ")
;; non bell all of alert sounds
(setq ring-bell-function 'ignore)
;; backup file
(setq backup-directory-alist
      (cons (cons "\\.*$" (expand-file-name "~/.emacs.d/backup/"))
	    backup-directory-alist))
;; auto-save file
(setq auto-save-file-name-transforms
	  `((".*" ,(expand-file-name "~/.emacs.d/backup/") t)))
;; use mouse wheel to scroll
(mouse-wheel-mode)
;; use clipboard 
(cond (window-system
       (setq x-select-enable-clipboard t)))
(setq its-hira-period "．")
(setq its-hira-comma "，")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Indent ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; valid tab indent
(setq-default indent-tabs-mode t)
(setq default-tab-width 4)
;; javascript
(setq js-indent-level 2)
;; C-h for backspace
(global-set-key "\C-h" 'delete-backward-char)
;; auto scroll when compile
(setq compilation-scroll-output t)
;; highlight corresponding brackets
(show-paren-mode 1)
;; open file via symlink
(setq vc-follow-symlinks t)

(if (boundp 'window-system)
	(setq default-frame-alist
		  (append (list
				   '(width . 87)
				   '(height . 55)
				   )
				  default-frame-alist)
		  )
  )
(setq initial-frame-alist default-frame-alist)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mozc-candidates-style "popup" t)
 '(package-selected-packages (quote (mozc use-package auto-complete)))
 '(setq "japanese" t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
