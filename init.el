(global-linum-mode t) ;; set up line numbers
(setq make-backup-files nil) ;; Don't make backupFile~
(setq-default indent-tabs-mode nil) ;; use spaces not tabs
(setq-default tab-width 4) ;; Set the tab width to 4
(setq-default c-basic-offset 4) ;; Set the offset for tabs to 4 for C, C++, Java files
(setq c-default-style "linux") ;; Get rid of the annoying bracket misalignment
(add-hook 'prog-mode-hook #'hs-minor-mode) ;; enable minor mode on startup
(global-auto-revert-mode t) ;; auto reload files that change on disk

;; Load the desert theme
(load "~/.emacs.d/desert-theme.el")
;; Show matching parens
(show-paren-mode 1)
(setq blink-matching-delay 0.3)

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

;; Define backtab to indent a block left
(global-set-key (kbd "<backtab>") 'un-indent-by-removing-4-spaces)
(defun un-indent-by-removing-4-spaces ()
  "remove 4 spaces from beginning of of line"
  (interactive)
  (save-excursion
    (save-match-data
      (beginning-of-line)
      ;; get rid of tabs at beginning of line
      (when (looking-at "^\\s-+")
        (untabify (match-beginning 0) (match-end 0)))
      (when (looking-at "^    ")
        (replace-match "")))))
