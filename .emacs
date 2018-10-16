;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; load el files
(setq load-path
      (append '(
		"~/.emacs.d/inits"
		) load-path))
(load "local.el")
(load "encode.el")

;; color theme
(load-theme 'manoj-dark t)
;; show line number
(global-linum-mode t)
(setq linum-format "%4d ")
;; don't show startup message
(setq inhibit-startup-message t)
;; no tool and menu bar 
(tool-bar-mode 0)
(if (not window-system) (menu-bar-mode 0))
;; anthy on emacs
(setq default-input-method "japanese-egg-anthy")
(global-set-key "\C-o" 'toggle-input-method)
;; compile scroll
(setq compilation-scroll-output t)
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
       (setq x-select-enable-clipboard t)
       ))
;; change Punctuation mark"," "."
(setq its-hira-period ".")
(setq its-hira-comma ",")
