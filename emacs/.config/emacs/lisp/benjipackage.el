;; -*- lexical-binding: t; -*-
(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(let ((packages '(
                  paredit        rainbow-delimiters      slime       bison-mode
                  company        company-quickhelp       dirvish     fancy-compilation
                  magit          magit-todos             forge       po-mode
                  org            org-bullets             ox-gfm      markdown-mode
                  pinentry       all-the-icons)))
                  
  (dolist (package packages)
    (unless (package-installed-p package)
      (package-install package))))

(provide 'benjipackage)
