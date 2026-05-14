(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-a") 'apropos)      
(global-set-key (kbd "C-x C-d") 'kill-buffer-and-window)


(global-set-key (kbd "C-x C-b") 'ibuffer)      

(global-set-key (kbd "C-c j ") 'avy-goto-char-timer)
(global-set-key (kbd "C-c l") 'avy-goto-line)



(global-set-key (kbd "C-=") 'er/expand-region)

(global-set-key (kbd "C-c e") 'embark-act)
(global-set-key (kbd "C-x b") 'consult-buffer)
(global-set-key (kbd "C-s") 'isearch-forward)
(global-set-key (kbd "C-r") 'consult-line)

(global-set-key (kbd "M-n") 'mc/mark-next-like-this)
(global-set-key (kbd "M-p") 'mc/mark-previous-like-this)

(global-set-key (kbd "C-\\") 'toggle-input-method)

(global-set-key (kbd "C-M-w") 'sdcv-search-input)

(define-key isearch-mode-map (kbd "C-c j") 'avy-isearch)


       



(provide 'init-keybinding)
