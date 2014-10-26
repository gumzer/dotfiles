; ===============
; package manager
; ===============

;; package repos (melpa may contain unstable packages)
    (setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                             ("org" . "http://orgmode.org/elpa/")
                             ("marmalade" . "http://marmalade-repo.org/packages/")
                             ("melpa" . "http://melpa.org/packages/")
                             ("melpa-stable" . "http://melpa-stable.milkbox.net/packages/")))
    (package-initialize)

    (defun require-package (package)
      (setq-default highlight-tabs t)
      "Install given PACKAGE."
      (unless (package-installed-p package)
        (unless (assoc package package-archive-contents)
          (package-refresh-contents))
        (package-install package)))


(provide 'init-packages)
;;; init-packages.el ends here
