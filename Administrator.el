; Ruby electric mode stuff
(add-hook 'ruby-mode-hook
          (lambda()
            ;; (add-hook 'local-write-file-hooks
;;                       '(lambda()
;;                          (save-excursion
;;                            (untabify (point-min) (point-max))
;;                            (delete-trailing-whitespace)
;;                            )))
;;             (set (make-local-variable 'indent-tabs-mode) 'nil)
;;             (set (make-local-variable 'tab-width) 2)
;;             (imenu-add-to-menubar "IMENU")
;;             (define-key ruby-mode-map "\C-m" 'newline-and-indent) ;Not sure if this line is 100% right but it works!
;; 	    (define-key ruby-mode-map "\M-;" 'comment-or-uncomment-region) ;Not sure if it will work...
            (require 'ruby-electric)
            (ruby-electric-mode t)
            ))

(add-to-list 'load-path (concat dotfiles-dir "/includes/color-theme-6.6.0"))

; loads color-theme
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-hober)))


;; find unbound keys in emacs
(add-to-list 'load-path (concat dotfiles-dir "/includes"))

(require 'unbound)