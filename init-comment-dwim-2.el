(message "init-comment-dwim-2.el")

;; always strictly comment the region instead of commenting whole lines
(setq cd2/region-command 'cd2/comment-or-uncomment-region)

(provide 'init-comment-dwim-2)
