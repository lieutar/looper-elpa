;; -*- lexical-binding: t -*-
(require 'f)
(require 's)
(require 'dash)
(require 'cl-lib)

(defun localify-recipe (file eldev-hub)
  (let* ((data  (read (f-read file)))
         (plist (cdr data)))
    (plist-put plist :fetcher 'git)
    (plist-put plist :repo (s-replace-regexp "\\`[^/]+"
                                             (format "file://%s" eldev-hub)
                                             (plist-get plist :repo)))
    (setcar (memq :repo plist) :url)
    (format "%S" data)))

(cl-destructuring-bind (eldev-hub src dst) command-line-args-left
  (dolist (basename (directory-files src))
    (let ((src-file (expand-file-name basename src))
          (dst-file (expand-file-name basename dst)))
      (when (f-file-p src-file)
        (let ((content  (localify-recipe src-file eldev-hub)))
          (message "%s -> %s" src-file dst-file)
          (message (s-replace-regexp "^" "\t" content))
          (with-temp-file dst-file (insert content))
          )))))
