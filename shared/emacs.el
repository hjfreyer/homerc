;; My awesome emacs config.
(setq HOMERC (getenv "HOMERC"))

;; Kill trailing whitespace.
(add-hook 'font-lock-mode-hook
          (lambda () (add-hook 'write-contents-hooks
                               'delete-trailing-whitespace t)))

;; Toolbars are for jerks.
(tool-bar-mode -1)
(scroll-bar-mode -1)
(show-paren-mode 1)

(defun set-local (name value) ()
  (set (make-local-variable name) value)
  )

;; Go is special.
(add-hook 'go-mode-hook
          (lambda ()
            (setq fill-column 80)
            (set-local 'tab-width 2)
            (set-local 'whitespace-style '(face trailing))
            ))
