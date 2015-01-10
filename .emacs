;;; package -- summary
;;; Commentary:
;;; Code: 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-enabled-themes (quote (slime)))
 '(custom-safe-themes (quote ("26247bcb0b272ec9a5667a6b854125450c88a44248123a03d9f242fd5c6ec36f" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'cask "/home/sayth/.cask/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

(load (expand-file-name "~/quicklisp/slime-helper.el"))
(setq inferior-lisp-program "/home/sayth/ccl/lx86cl64") 
(add-hook 'org-mode-hook 'turn-on-font-lock) ; not needed when global-font-lock-mode is on
     (global-set-key "\C-cl" 'org-store-link)
     (global-set-key "\C-ca" 'org-agenda)
     (global-set-key "\C-cb" 'org-iswitchb)

;; easy spell checks
(global-set-key (kbd "<f8>") 'ispell-word)
(global-set-key (kbd "C-S-<f8>") 'flyspell-mode)
(global-set-key (kbd "C-M-<f8>") 'flyspell-buffer)
(global-set-key (kbd "C-<f8>") 'flyspell-check-previous-highlighted-word)
(defun flyspell-check-next-highlighted-word ()
  "Custom function to spell check next highlighted word"
  (interactive)
  (flyspell-goto-next-error)
  (ispell-word)
  )
(global-set-key (kbd "M-<f8>") 'flyspell-check-next-highlighted-word)

;;; magit
(add-to-list 'load-path "/home/sayth/.emacs.d/elpa/git-commit-mode")
(add-to-list 'load-path "/home/sayth/.emacs.d/elpa/magit")
(eval-after-load 'info
  '(progn (info-initialize)
          (add-to-list 'Info-directory-list "/home/sayth/.emacs.d/elpa/magit")))
(require 'magit)
(require 'graphene)
(require 'sr-speedbar)

(provide '.emacs)
;;; .emacs ends here

