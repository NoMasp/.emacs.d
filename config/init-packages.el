;; nomasp start
(when (>= emacs-major-version 24)
  (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
			   ("melpa" . "http://elpa.emacs-china.org/melpa-stable/"))))
;; 注意 elpa.emacs-china.org 是 Emacs China 中文社区在国内搭建的一个 ELPA 镜像

;; cl - Common Lisp Extension
(require 'cl)

;; Add Packages
(defvar my/packages '(
		      ;; --- Auto-completion ---
		      company
		      ;; --- Better Editor ---
		      hungry-delete
		      swiper
		      counsel
		      smartparens
		      ;; --- Major Mode ---
		      js2-mode ;; javascript
		      ;; --- Minor Mode ---
		      nodejs-repl
		      exec-path-from-shell
		      ;; --- Themes ---
		      monokai-theme
		      popwin ;; popwin
		      ;; solarized-theme
		      reveal-in-osx-finder
		      expand-region
		      iedit
		      ) "Default packages")

(setq package-selected-packages my/packages)

(defun my/packages-installed-p ()
  (loop for pkg in my/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

(unless (my/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg my/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;; Find Executable Path on OS X
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))
;; end

;; nomasp 加载hungry-delete，能够一次删除光标左侧所有空格
(require 'hungry-delete)
(global-hungry-delete-mode)

;; nomasp 智能添加右括号
(smartparens-global-mode t)
;; nomasp emacs-lisp-mode下不要自动匹配单引号
(sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)

;; nomasp js2-mode
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))

;; nomasp swiper将搜索结果多行列出
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)

;; nomasp 开启全局 Company 补全
(global-company-mode t)

;; nomasp popwin-mode
(require 'popwin)
(popwin-mode t)

(provide 'init-packages)
