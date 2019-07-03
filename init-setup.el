(message "init-setup.el")

;; ;; set up default frame size and location
;; ;; manually set since (/ (display-pixel-height) (frame-char-height)) not work
;; ;; (if (> (display-pixel-width) 1440) does not work also when using ec
;; ;; current solution: just use max screen in spacemacs config
;; (setq frame-resize-pixelwise t)
;; (defun set-frame-size-according-to-resolution ()
;;   (interactive)
;;   ;; (if (display-graphic-p)
;;       (progn
;;         ;; use differnt char wide windows for large/small displays
;;         (if (> (display-pixel-width) 1440)
;;             (add-to-list 'default-frame-alist (cons 'width 212))
;;           (add-to-list 'default-frame-alist (cons 'width 86)))
;;         ;; for the height, use full height
;;         (add-to-list 'default-frame-alist '(fullscreen . fullheight))
;;         ));; )
;; (set-frame-size-according-to-resolution)


;; general info for graphical ui:
;; https://github.com/syl20bnr/spacemacs/blob/master/doc/DOCUMENTATION.org#gui-toggles

;; fill column (default 80 characters)
;; toggle column indicator key binding: SPC t f
;; (setq-default fill-column 80)
;; Activate column indicator in prog-mode and text-mode
;; (add-hook 'prog-mode-hook 'turn-on-fci-mode)
;; (add-hook 'text-mode-hook 'turn-on-fci-mode)

;; ;; use new window when using ec to open file
(setq server-window 'pop-to-buffer)
;; (add-hook 'after-init-hook
;;           (setq server-window 'pop-to-buffer))

;; set neo-tree theme
;; http://develop.spacemacs.org/layers/+filetree/neotree/README.html#install
(setq neo-theme 'nerd)

(provide 'init-setup)
