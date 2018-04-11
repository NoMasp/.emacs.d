;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; nomasp 关闭工具栏
(tool-bar-mode -1)

;; nomasp 关闭文件滚动条
(scroll-bar-mode -1)

;; nomasp 显示行号
(global-linum-mode t)

;; nomasp 当前行高亮显示
(global-hl-line-mode t)

;; nomasp 关闭启动帮助画面
(setq inhibit-splash-screen t)

;; nomasp 修改光标为细线
(setq-default cursor-type 'bar)

;; nomasp 修改显示字体大小 16pt
(set-face-attribute 'default nil :height 130)

;; nomasp 快速打开配置文件，绑定到F2
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f2>") 'open-my-init-file)

;; nomasp 显示最近的文件
(recentf-mode t)

;; nomasp 开启全局 Company 补全
(global-company-mode t)

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
