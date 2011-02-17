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

(setq cua-enable-cua-keys nil)
(cua-mode t)

(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after
;; rectangle commands
(transient-mark-mode 1) ;; No region when it is not highlighted
(setq cua-keep-region-after-copy t) ;; Standard Windows behaviour

(add-to-list 'load-path "~/.emacs.d/elisp/feature-mode")
(require 'feature-mode)
(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))



