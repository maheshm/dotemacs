(use-package magit
  :bind (("C-c m" . magit-status)
         ("C-c l" . magit-list-repositories))

  :config
  (setq magit-repository-directories
        '(("~/playground" . 2))))

(provide 'magit-config)
