;; -*- lexical-binding: t; -*-
(setq vc-follow-symlinks nil)

(require 'server)
(unless (server-running-p)
  (server-start))

(setq inferior-lisp-program "~/.local/bin/sbcl")
(add-to-list 'Info-default-directory-list "~/.local/share/info")
(add-to-list 'Info-default-directory-list "/usr/local/share/info")
(add-to-list 'Info-default-directory-list "/opt/homebrew/share/info")
(add-to-list 'Info-default-directory-list "/usr/share/info")



(provide 'benjimisc)
