(message "init-key-bindings.el")

;; Global Keymaps
;; achieved by using minor mode to unify the global keymap
;; this minor mode should be first on the list minor-mode-map-alist
;; usually put the following pieces near the end of emacs config
(defvar global-keybindings-minor-mode-map
  (let ((map (make-sparse-keymap)))
    ;; custom key bindings
    ;; (define-key map (kbd "C-j") 'goto-line)
    (define-key map (kbd "C-o") 'other-window)
    ;; multi-term
    (define-key map (kbd "M-o") 'multi-term-next)
    ;; (define-key map (kbd "M-/") 'split-window-right-and-focus)
    ;; (define-key map (kbd "M--") 'split-window-below-and-focus)
    ;; (define-key map (kbd "M-0") 'delete-window)
    ;; (define-key map (kbd "M-1") 'delete-other-windows)
    ;; (define-key map (kbd "M-m") 'set-mark-command)
    ;; (define-key map (kbd "M-z") 'undo)
    ;; comment-dwim-2
    (define-key map (kbd "M-;") 'comment-dwim-2)
    ;; helm
    (define-key map (kbd "C-x C-b") 'helm-mini)
    (define-key map (kbd "C-s") 'helm-swoop)
    (define-key map (kbd "M-s") 'helm-do-grep-ag)
    (define-key map (kbd "C-M-s") 'helm-projectile-ag)
    (define-key map (kbd "M-y") 'helm-show-kill-ring)
    ;; helm-bibtex
    
    ;; magit
    
    ;; recompile
    
    ;; dumb-jump
    (define-key map (kbd "C-=") 'dumb-jump-go)
    (define-key map (kbd "C-<tab>") 'dumb-jump-back)

    map)
  "global-keybindings-minor-mode keymap")

(define-minor-mode global-keybindings-minor-mode
  "a minor mode so that my global keymap could be unified over all modes"
  :init-value t
  :lighter " Gkbd")
(global-keybindings-minor-mode 1)
(defun global-keybindings-minibuffer-disable ()
  (global-keybindings-minor-mode 0))

;; term-mode (works for multi-term)
(add-hook 'term-mode-hook
          (lambda ()
            (define-key term-raw-map (kbd "C-p")
              (lambda ()
                (interactive)
                (term-send-backward-kill-word)
                (term-send-up)))
            (define-key term-raw-map (kbd "C-n")
              (lambda ()
                (interactive)
                (term-send-backward-kill-word)
                (term-send-down)))
            (define-key term-raw-map (kbd "C-k")
              (lambda ()
                (interactive)
                (term-send-raw-string "\C-k")
                (kill-line)))
            ))


(provide 'init-key-bindings)
