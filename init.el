;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/config")

(require 'init-packages)

;; nomasp 当在外部有修改时，让emacs自动重新加载
(global-auto-revert-mode t)

;; nomasp 关闭工具栏
(tool-bar-mode -1)

;; nomasp 关闭文件滚动条
(scroll-bar-mode -1)

;; nomasp 显示行号
(global-linum-mode t)

;; nomasp 当前行高亮显示
(global-hl-line-mode t)

;; nomasp 加载主题monokai
(load-theme 'monokai t)


;; nomasp 让mac系统下面的命令程序可见
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))




(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)


;; nomasp 关闭启动帮助画面
(setq inhibit-splash-screen t)

;; nomasp 修改光标为细线
(setq-default cursor-type 'bar)

;; nomasp 修改显示字体大小 16pt
(set-face-attribute 'default nil :height 130)

;; nomasp 设定一些快捷键
(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-h C-k") 'find-function-on-key)

;; nomasp 快速打开配置文件，绑定到F2
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f2>") 'open-my-init-file)

;; nomasp 显示最近的文件
(recentf-mode t)



;; nomasp 替换选择的全部
(delete-selection-mode 1)

;; nomasp 开启recentf模式
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key (kbd "\C-x\ \C-r") 'recentf-open-files)

;; nomasp org模式下支持语法高亮
(require 'org)
(setq org-src-fontify-natively t)

(setq ring-bell-function 'ignore)


;; nomasp 让emacs开启时为全屏
;; (setq initial-frame-alist (quote ((fullscreen . maximized))))

;; nomasp 添加一个钩子，激活paren-mode
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
