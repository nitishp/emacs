(global-linum-mode t) ;; set up line numbers
(setq make-backup-files t) ;; Don't make backupFile~
(setq-default indent-tabs-mode nil) ;; use spaces not tabs
(setq-default tab-width 4) ;; Set the tab width to 4
(setq-default c-basic-offset 4) ;; Set the offset for tabs to 4 for C, C++, Java files
(setq c-default-style "linux") ;; Get rid of the annoying bracket misalignment

;; Load the desert theme
(load "~/.emacs.d/desert-theme.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
