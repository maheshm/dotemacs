(let ((configs (concat user-emacs-directory (convert-standard-filename "config/")))
      (utils (concat user-emacs-directory (convert-standard-filename "utils/"))))
  (add-to-list 'load-path configs)
  (add-to-list 'load-path utils))

;; Setups
(require 'package-setup)
(require 'window-setup)
(require 'common-setup)
;;(require 'fira-code-setup)

;; Install flycheck here since this file is loaded before other mode-configs
(require 'flycheck-config)

;; Configs
(require 'ac-config)
(require 'ace-jump-config)
(require 'anzu-config)
(require 'dash-at-point-config)
(require 'dired-config)
(require 'dumb-jump-config)
(require 'editorconfig-config)
(require 'git-gutter-config)
(require 'git-timemachine-config)
(require 'haml-config)
(require 'ibuffer-config)
(require 'ido-config)
(require 'js2-config)
(require 'json-config)
(require 'magit-config)
(require 'markdown-config)
(require 'multiple-cursors-config)
(require 'org-config)
(require 'perspective-config)
(require 'powerline-config)
(require 'projectile-config)
(require 'reason-config)
(require 'recentf-config)
(require 'restclient-config)
(require 'rg-config)
(require 'rjsx-config)
(require 'rspec-config)
(require 'ruby-config)
(require 'sh-config)
(require 'smartparens-config)
(require 'sml-config)
(require 'sql-config)
(require 'super-save-config)
(require 'theme-font-config)
(require 'uniquify-config)
(require 'vue-config)
(require 'web-config)
(require 'whitespace-config)
(require 'yaml-config)
(require 'yasnippet-config)

;; Utils
(require 'lineutils)
(require 'pathutils)
