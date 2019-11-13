;; -*- coding:utf-8 -*-

(provide 'misc-common)

;;; auto-complete
(global-auto-complete-mode 1)
(ac-config-default)
(setq ac-use-menu-map t)
(ac-set-trigger-key "TAB")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; input method ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key "\C-o" 'toggle-input-method)
;;; mozc
(when (locate-library "mozc")
  (setq default-input-method "japanese-mozc"))
;;; egg
(when (locate-library "egg")
  (setq default-input-method "japanese-egg-anthy"))
;;; ddskk
(setq default-input-method 'japanese-skk
	  skk-japanese-message-and-error nil
	  skk-show-japanese-menu nil
	  skk-show-annotation nil
	  skk-status-indicator 'left)
;; indicator
(setq skk-latin-mode-string "[_A]"
	  skk-hiragana-mode-string "[あ]"
	  skk-katakana-mode-string "[ア]"
	  skk-jisx0208-latin-mode-string "[A]"
	  skk-jisx0201-mode-string "[_ｱ]"
	  skk-indicator-use-cursor-color nil
	  skk-show-inline 'vertical)

;; create bacup file in .emacs.d/backups
(setq-default delete-old-versions t)
(setq make-backup-files t)
(setq backup-directory-alist
	  (cons (cons "\\.*$" (expand-file-name "~/.emacs.d/backups"))
			backup-directory-alist))

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

;;;;;;;;

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

;; use mouse wheel to scroll
(mouse-wheel-mode)
;; use clipboard 
(cond (window-system
       (setq x-select-enable-clipboard t)))
(setq its-hira-period "．")
(setq its-hira-comma "，")
