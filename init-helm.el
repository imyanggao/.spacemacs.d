(message "init-helm.el")

;; helm swoop
;; Use search query at the cursor as default
(setq helm-swoop-pre-input-function
      (lambda () (thing-at-point 'symbol)))

(provide 'init-helm)
