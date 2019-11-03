(package-initialize)

;;
;; Load My el Files
;;
;(setq load-path (cons "~/.emacs.d/init.el" load-path))

;; don't show startup message
(setq inhibit-startup-message t)
;; no tool and menu bar 
(tool-bar-mode 0)
(if (not window-system) (menu-bar-mode 0))

(load-theme 'manoj-dark t)

;; anthy on emacs
;(setq default-input-method "japanese-egg-anthy")
;(setq default-input-method "japanese-mozc")
;(global-set-key "\C-o" 'toggle-input-method)

;; compile scroll
(setq compilation-scroll-output t)

;; show line number
(global-linum-mode t)
(setq linum-format "%4d ")

;; mew 
(setq mew-mail-path "~/.Mail")
(setq mew-signature-insert-last t)

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
       (setq x-select-enable-clipboard t)
       ))

(setq its-hira-period ".")
(setq its-hira-comma ",")

(setq-default indent-tabs-mode t)
(setq default-tab-width 4)
(setq js-indent-level 2)

;; C-h for backspace
(global-set-key "\C-h" 'delete-backward-char)
