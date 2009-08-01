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
     (color-theme-billw2)
     ))


;; find unbound keys in emacs
(add-to-list 'load-path (concat dotfiles-dir "/includes"))

(require 'unbound)

;; yasnippet
(add-to-list 'load-path (concat dotfiles-dir "/includes/yasnippet"))
(require 'yasnippet) ;; not yasnippet-bundle
(yas/initialize)
(yas/load-directory (concat dotfiles-dir "/includes/yasnippet/snippets"))

;; (add-hook 'ruby-mode-hook
;;           (lambda ()
;;              (make-variable-buffer-local 'yas/trigger-key)
;;              (setq yas/trigger-key [tab])))

;; (add-hook 'ruby-mode-hook
;;           	  (lambda ()
;;           	    (org-set-local 'yas/trigger-key [tab])
;;           	    (define-key yas/keymap [tab] 'yas/next-field-group)))

(add-hook 'ruby-mode-hook
          #'(lambda ()
              (local-set-key [tab] 'yas/expand)))
