(setq cua-rectangle-mark-key (kbd "M-RET"))

(global-set-key [f4] 'shrink-window-horizontally)
(global-set-key [f5] 'shrink-window-vertically)
(global-set-key [f6] 'split-window-horizontally)
(global-set-key [f7] 'split-window-vertically)
(global-set-key [f8] 'delete-window)

(require 'whitespace)
(autoload 'whitespace-mode           "whitespace" "Toggle whitespace visualization."        t)
(autoload 'whitespace-toggle-options "whitespace" "Toggle local `whitespace-mode' options." t)
(add-hook 'ruby-mode-hook 'whitespace-mode)
(add-hook 'js2-mode-hook 'whitespace-mode)

(add-to-list 'load-path "~/.emacs.d/ruby-mode")
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(custom-set-variables
 '(js2-auto-indent-p t)
 '(js2-bounce-indent-p nil)
 '(js2-enter-indents-newline t)
 '(js2-indent-on-enter-key t)
 '(js2-mirror-mode t)
 '(js2-use-ast-for-indentation-p t)
 '(kill-wspace-mode t)
 '(show-trailing-whitespace t)
)

(setq cua-enable-cua-keys nil)
(cua-mode t)

(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after
;; rectangle commands
(transient-mark-mode 1) ;; No region when it is not highlighted
(setq cua-keep-region-after-copy t) ;; Standard Windows behaviour

(add-to-list 'load-path "~/.emacs.d/elisp/feature-mode")
(require 'feature-mode)
(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))

(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)

(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

(global-set-key "\C-c\C-n" 'whitespace-cleanup)

(defalias 'qrr 'query-replace-regexp)

(set-char-table-range auto-fill-chars 10 nil)

(global-set-key "\C-c\C-k" 'copy-region-as-kill)

(defun copy-line (&optional arg)
  (interactive "P")
  (toggle-read-only 1)
  (kill-line arg)
  (beginning-of-line)
  (toggle-read-only 0))

(setq-default kill-read-only-ok t)
(global-set-key "\M-k" 'copy-line)
