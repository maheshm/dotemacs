;; Package Manager


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(cond
 ((string-equal system-type "darwin") ; for OS X
  (require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el"))
 ((string-equal system-type "gnu/linux") ; for Linux
  (require 'cask "~/.cask/cask.el")))
(cask-initialize)

;; Pallet keeps Cask file in sync with packages installed by package-install
(require 'pallet)
(pallet-mode t)

;; Load all config files
(setq root-dir "~/.emacs.d")

(setq myconfig (concat root-dir "/myconfig"))
(add-to-list 'load-path myconfig)

(setq vendor (concat root-dir "/vendor"))
(add-to-list 'load-path vendor) ;; third party plugins

(mapcar 'load (directory-files myconfig t "\\.el\\'"))
(mapcar 'load (directory-files vendor t "\\.el\\'"))

;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(coffee-tab-width 2)
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(magit-commit-arguments (quote ("--gpg-sign=EE9946C543068B25")))
 '(markdown-command "rdiscount")
 '(send-mail-function (quote smtpmail-send-it))
 '(smtpmail-smtp-server "smtp.gmail.com")
 '(smtpmail-smtp-service 25))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
