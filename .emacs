
;; load my emacs lisp file
(setq load-path (cons "~/.emacs.d/my_els" load-path))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; local config ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; anthy on emacs
(setq default-input-method "japanese-egg-anthy")
(global-set-key "\C-o" 'toggle-input-method)
;; mew 
(setq mew-mail-path "~/.Mail")
(setq mew-signature-insert-last t)

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

;(if (boundp 'window-system)
;	(setq default-frame-alist
;		  (append (list
;				   '(width . 87)
;				   '(height . 55)
;				   )
;				  default-frame-alist)
;		  )
;  )
;(setq initial-frame-alist default-frame-alist)

;(add-to-list 'load-path "~/.emacs.d/popup-el")
;(load "popup")
;(add-to-list 'load-path "~/.emacs.d/auto-complete")
;(load "auto-complete")
;(require 'auto-complete-config)
;(ac-config-default)
;(ac-set-trigger-key "TAB")
;(setq ac-use-menu-map t)
