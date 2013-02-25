;; My awesome emacs config.
(setq HOMERC (getenv "HOMERC"))

(require 'package)
(add-to-list 'package-archives
	     '("marmalade" .
	       "http://marmalade-repo.org/packages/"))
(package-initialize)

;; Kill trailing whitespace.
(add-hook 'font-lock-mode-hook
          (lambda () (add-hook 'write-contents-hooks
                               'delete-trailing-whitespace t)))

;; Toolbars are for jerks.
(tool-bar-mode -1)
(scroll-bar-mode -1)
(show-paren-mode 1)

(require 'whitespace)
(setq whitespace-style 
      '(face tabs trailing lines-tail space-before-tab newline 
	     indentation empty space-after-tab))
(setq whitespace-global-modes '(not go-mode))
(global-whitespace-mode 1)

(defun set-local (name value) ()
  (set (make-local-variable name) value)
  )

;; Go is special.
(add-hook 'go-mode-hook
          (lambda ()
            (set-local 'tab-width 2)
	    (whitespace-toggle-options '(tabs lines-tail))
            ))
