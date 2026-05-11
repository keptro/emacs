(require 'package)
(setq package-archives'(
		       ("gnu" . "https://elpa.gnu.org/packages/")
		       ("melpa" . "https://melpa.org/packages/")
		       ;("gnu". "https://mirrors.ustc.edu.cn/elpa/gnu/")
		       ;("melpa". "https://mirrors.ustc.edu.cn/elpa/melpa/")
		       ;("gnu". "http://elpa.zilongshanren.com/gnu/")
       		       ;("mepla". "http://elpa.zilongshanren.com/mepla/")
		       ))
(package-initialize)
(when (not package-archive-contents) (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


(provide 'init-packages)
