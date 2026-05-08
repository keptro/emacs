;;-*- lexical-binding -*-
(add-to-list 'load-path "~/.emacs.d/elisp/")
(require 'init-default)
(require 'init-keybinding)
(require 'init-packages)
(require 'init-module)
(setq custom-file (expand-file-name "~/.emacs.d/custom.el"))
(load custom-file 'no-error 'no-message)
