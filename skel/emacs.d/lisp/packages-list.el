(provide 'packages-list)

(require 'cl)
(require 'package)

(setq package-archives
      (append
        '(("melpa"  . "https://melpa.org/packages/"))
          package-archives))

(package-initialize)

(defvar installing-package-list
  '(
    auto-complete
	ddskk
    mozc
	quickrun
    ))
(let ((not-installed
        (loop for x in installing-package-list
              when (not (package-installed-p x))
              collect x)))
  (if (> (length not-installed) 0)
    (progn
      (package-refresh-contents)
      (dolist (pkg not-installed)
        (package-install pkg)))))

