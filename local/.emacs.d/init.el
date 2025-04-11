(setq user-emacs-directory
      (expand-file-name (file-name-directory load-file-name)))
(setq package-user-dir
      (expand-file-name "elpa" user-emacs-directory))
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(use-package f :ensure t)
(use-package s :ensure t)
(use-package dash :ensure t)
(use-package ppp  :ensure t)
