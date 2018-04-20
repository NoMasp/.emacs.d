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

;; nomasp 增强occur模式，自动选取光标所在位置的单词
;; dwim = do want i mean
(defun occur-dwim ()
  "Call `occur' with a sane default."
  (interactive)
  (push (if (region-active-p)
	    (buffer-substring-no-properties
	     (region-beginning)
	     (region-end))
	  (let ((sym (thing-at-point 'symbol)))
	    (when (stringp sym)
	      (regexp-quote sym))))
	regexp-history)
  (call-interactively 'occur))
(global-set-key (kbd "M-s o") 'occur-dwim)
(setq split-width-threshold 0)

;; nomasp 显示当前文件里的函数列表

;; nomasp 高亮显示光标两侧的括号
(define-advice show-paren-function (:around (fn) fix-show-paren-function)
  "Highlight enclosing parens."
  (cond ((looking-at-p "\\s(") (funcal fn))
	(t (save-excursion
	     (ignore-errors (backward-up-list))
	     (funcall fn)))))
;; nomasp 添加一个钩子，激活paren-mode
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; nomasp 替换选择的全部
(delete-selection-mode 1)

;; nomasp 让mac系统下面的命令程序可见
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; nomasp 替换yes-or
(fset 'yes-or-no-p 'y-or-n-p)

;; nomasp 设置拷贝和删除时都默认为递归
(setq dired-recursive-copies 'always)
(setq dired-recursive-deletes 'always)

;; nomasp 共用dired buffer
(put 'dired-find-alternate-file 'disabled nil)
(require 'dired)
(define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)

;; nomasp 开启dired
(require 'dired-x)

;; nomasp 开启dired-dwin-target
(setq dired-dwim-target t)

(provide 'init-better-default)
