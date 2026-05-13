;;
(use-package keycast :ensure t)
(keycast-mode-line-mode t)
;;

(use-package orderless :ensure t)
(setq completion-styles '(orderless))
;;
(use-package vertico :ensure t)
(vertico-mode t)
;;(use-package vertico-posframe :ensure t)
;;(vertico-posframe-mode -1)


(marginalia-mode t)

;;
(use-package avy :ensure t)
(setq avy-single-candidate-jump nil)
(setq avy-timeout-seconds 0.3)
(setq avy-keys '(?a ?s ?d ?f ?g ?j ?l ?q ?e ?r ?u ?i ?o ?p ?n ?v ?b))




(use-package embark :ensure t)
(setq prefix-help-command 'embark-prefix-help-command)
(use-package embark-consult :ensure t)



;; multiple cursors setting
(use-package multiple-cursors :ensure t)
(multiple-cursors-mode t)


(add-to-list 'load-path (expand-file-name "~/.emacs.d/awesome-tab"))
(require 'awesome-tab)
(awesome-tab-mode t)


;;company
(global-company-mode 1)
(setq company-minimum-prefix-length 1)
(setq company-idleb-delay 0)


;; gruvbox
(load-theme 'gruvbox-dark-medium t)

;;pyim
(require 'pyim)
(require 'pyim-basedict)
(require 'pyim-cregexp-utils)
(pyim-basedict-enable)
(setq pyim-page-length 5)
(setq default-input-method "pyim")
(pyim-isearch-mode t)
(pyim-default-scheme 'xiaohe-shuangpin)


;; sdcv
(add-to-list 'load-path (expand-file-name "~/.emacs.d/sdcv"))
(require 'sdcv)
(setq sdcv-say-word-p t)

(setq sdcv-dictionary-data-dir "/home/troke/.emacs.d/sdcv/stardict")

(setq sdcv-dictionary-simple-list
      '("oxford-gb"
	"eedic"
	"langdao-ec"))
(setq sdcv-dictionary-complete-list
      '("oxford-gb"
	"eedic"
       "langdao-ec"))

(require 'init-function)


(use-package f :ensure t)
(use-package guess-word						     
  :load-path "./emacs-guess-word-game"				     
  :commands (guess-word))					     
								     
(setq guess-word-org-file (f-expand "~/work/git/org/guess-word.org"))


;; need to run in the linux
;; use window it can't work
;;(add-to-list 'load-path "~/.emacs.d/site-lisp/emacs-application-framework/")
;;(require 'eaf)
;;(require 'eaf-browser)
;;(require 'eaf-org-previewer)
;;(require 'eaf-pdf-viewer)


(provide 'init-module)


