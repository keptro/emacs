;;
(use-package keycast :ensure t)
(keycast-mode-line-mode t)
;;

(use-package orderless :ensure t)
(setq completion-styles '(orderless))
;;
(use-package vertico :ensure t)
(vertico-mode t)
;;
(use-package avy :ensure t)
(use-package embark :ensure t)
(use-package embark-consult :ensure t)

(global-company-mode 1)
(setq company-minimum-prefix-length 1)
(setq company-idleb-delay 0)

(load-theme 'gruvbox-dark-medium t)



(require 'init-function)



(provide 'init-module)




