;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/config")

;; nomasp 查找features，然后load
(require 'init-packages)
(require 'init-ui)
(require 'init-better-default)
(require 'init-org)
(require 'init-keybindings)

;; nomasp 加载custom file
(setq custom-file (expand-file-name "config/custom.el" user-emacs-directory))
(load-file custom-file)

;;; nomasp load scheme
(setq scheme-program-name "mit-scheme")
