;; nomasp 关闭工具栏
(tool-bar-mode -1)

;; nomasp 关闭文件滚动条
(scroll-bar-mode -1)

;; nomasp 关闭启动帮助画面
(setq inhibit-splash-screen t)

;; nomasp 修改光标为细线
(setq-default cursor-type 'bar)

;; nomasp 修改显示字体大小 16pt
(set-face-attribute 'default nil :height 130)

;; nomasp 显示行号
(global-linum-mode t)

;; nomasp 当前行高亮显示
(global-hl-line-mode t)

;; nomasp 加载主题monokai
(load-theme 'monokai t)

;; nomasp 让emacs开启时为全屏
;; (setq initial-frame-alist (quote ((fullscreen . maximized))))

(provide 'init-ui)
