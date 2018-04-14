;; nomasp 禁止到顶部/底部时到提示音
(setq ring-bell-function 'ignore)

;; nomasp 显示最近的文件
(recentf-mode t)

;; nomasp 当在外部有修改时，让emacs自动重新加载
(global-auto-revert-mode t)

;; nomasp 开启recentf模式
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key (kbd "\C-x\ \C-r") 'recentf-open-files)

;; nomasp 添加一个钩子，激活paren-mode
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; nomasp 替换选择的全部
(delete-selection-mode 1)

;; nomasp 让mac系统下面的命令程序可见
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(provide 'init-better-default)
