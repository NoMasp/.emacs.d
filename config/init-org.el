;; nomasp org模式下支持语法高亮
(require 'org)
(setq org-src-fontify-natively t)

(setq org-agenda-files '("~/org"))
(global-set-key (kbd "C-c a") 'org-agenda)

(setq org-capture-templates
      '(("t" "Todo" entry (file-headline "~/.emacs.d/gtd.org" "工作安排")
	 :empty-lines 1)))

(provide 'init-org)
