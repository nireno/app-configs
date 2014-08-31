(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes (quote ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(evil-mode t)
 '(package-archives (quote (("gnu" . "http://elpa.gnu.org/packages/") ("melpa" . "http://melpa.milkbox.net/packages/"))))
 '(standard-indent 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;Fix java autoindentation: http://www.emacswiki.org/emacs/IndentingJava
(add-hook 'java-mode-hook '(lambda ()
  (local-set-key (kbd "RET") 'newline-and-indent)))
(add-hook 'java-mode-hook
              (lambda ()
                "Treat Java 1.5 @-style annotations as comments."
                (setq c-comment-start-regexp "(@|/(/|[*][*]?))")
                (modify-syntax-entry ?@ "< b" java-mode-syntax-table)))
