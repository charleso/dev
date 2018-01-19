(require 'yasnippet)

(setq yas-snippet-dirs
      '("~/dotfiles/emacs-clean/snippets"
        "~/dotfiles/emacs-clean/lib/yasnippet/yasmate/snippets" ;; the yasmate collection
        "~/dotfiles/emacs-clean/lib/yasnippet/snippets"         ;; the default collection
        ))

(yas-global-mode 1)
