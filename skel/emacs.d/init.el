;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq gc-cons-threshold (* gc-cons-threshold 10))

;; common load-path
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; load packages
(require 'packages-list)

;; global non-major and/or minor-modes
(require 'misc-common)


(setq gc-cons-threshold (/ gc-cons-threshold 10))

;; emacs version 22.3 or later
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
