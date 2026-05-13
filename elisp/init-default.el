(defun init-setup-frame(frame)
  (with-selected-frame frame
    (tool-bar-mode -1)
    (toggle-scroll-bar -1)
    (toggle-frame-maximized)
    (menu-bar-mode -1)
    ))

(add-hook 'after-make-frame-functions #'init-setup-frame)
(when (display-graphic-p)
  (init-setup-frame (selected-frame)))

(global-display-line-numbers-mode 1)
(global-auto-revert-mode 1)

(save-place-mode 1)
(savehist-mode 1)
(setq auto-save-default nil)
(setq inhibit-startup-screen t)
(setq tab-always-indent 'complete)
(setq ring-bell-function 'ignore)
(setq select-enable-clipboard t)

(set-face-attribute 'default' nil :height 200)
(electric-pair-mode t)
(fset 'yes-or-no-p 'y-or-n-p)


(setq backup-directory-alist
      `((".".,(expand-file-name "~/.emacs.d/backups"))))
(setq make-backup-files t)
(setq backup-by-copying t)
(setq delete-old-versions t)
(setq kept-new-versions 6)
(setq kept-old-versions 2)
(setq version-control t)
(setq ibuffer-use-other-window t)
(delete-selection-mode t)




(prefer-coding-system 'utf-8)
(setq locale-coding-system 'utf-8)

(set-language-environment 'utf-8)
(set-default-coding-systems 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-file-name-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(modify-coding-system-alist 'process "*" 'utf-8)

(provide 'init-default)
