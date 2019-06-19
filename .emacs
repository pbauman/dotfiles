(setq fill-column 80)
(setq text-mode-hook 'turn-on-auto-fill)
(setq default-major-mode 'text-mode)
;;; Stefan Monnier <foo at acm.org>. It is the opposite of fill-paragraph
    (defun unfill-paragraph ()
      "Takes a multi-line paragraph and makes it into a single line of text."
      (interactive)
      (let ((fill-column (point-max)))
      (fill-paragraph nil)))
(define-key global-map "\M-Q" 'unfill-paragraph)
;;(load "~/.elisp/autoloads" 'install)
(setq auto-mode-alist
      (cons '("SConstruct" . python-mode) auto-mode-alist))
(setq auto-mode-alist
      (cons '("SConscript" . python-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.h$" . c++-mode) auto-mode-alist))
(add-to-list 'auto-mode-alist '("\\.C\\'" . c++-mode))
(add-to-list 'auto-mode-alist
             '("\\.[F]\\(90\\|95\\)\\'" . f90-mode))
(global-set-key [f5] 'compile)
(add-to-list 'load-path "~/.elisp")
;;(require 'etags-select)
(setq-default indent-tabs-mode nil)
(global-set-key "\M-{" 'comment-region)
(global-set-key "\M-}" 'uncomment-region)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(cua-mode t)
 '(inhibit-startup-screen t)
 '(scroll-bar-mode (quote right))
 '(show-paren-mode t)
 '(transient-mark-mode t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
(setq mouse-drag-copy-region nil)
(add-to-list 'auto-mode-alist '("\\.cu$" . c++-mode))
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(put 'downcase-region 'disabled nil)
