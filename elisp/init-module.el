;;
(use-package keycast :ensure t)
(keycast-mode-line-mode t)
;;

(use-package orderless :ensure t)
(setq completion-styles '(orderless))
;;
(use-package vertico :ensure t)
(vertico-mode t)
(use-package vertico-posframe :ensure t)
(vertico-posframe-mode t)


(marginalia-mode t)

;;
(use-package avy :ensure t)
(setq avy-single-candidate-jump nil)
(setq avy-timeout-seconds 0.3)


(use-package embark :ensure t)
(setq prefix-help-command 'embark-prefix-help-command)
(use-package embark-consult :ensure t)



(global-company-mode 1)
(setq company-minimum-prefix-length 1)
(setq company-idleb-delay 0)

(load-theme 'gruvbox-dark-medium t)



(require 'init-function)



(provide 'init-module)




