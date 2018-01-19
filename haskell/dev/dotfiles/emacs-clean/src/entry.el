(if (equal nil (getenv "ZDOTDIR"))
    (setenv "EDOTDIR" "~/dotfiles/emacs-clean")
        (setenv "EDOTDIR" (concat (getenv "ZDOTDIR") "/dotfiles/emacs-clean")))

(if (equal nil (getenv "ZDOTDIR"))
    (setenv "ZDOTDIR" "/Users/mth"))

(load-file (concat (getenv "EDOTDIR") "/src/paths.el"))

(load-library "mth-configure-ace-window")
(load-library "mth-configure-ido")
(load-library "mth-configure-smex")
(load-library "mth-configure-kill-ring")
(load-library "mth-configure-yasnippet")
(load-library "mth-configure-hippies")
(load-library "mth-configure-haskell-mode")
(load-library "mth-configure-wgrep")
(load-library "mth-configure-projectile")
(load-library "mth-configure-doremi")

(load-library "mth-send-shell")
(load-library "mth-disable-final-newline")

(load-library "mth-view")
(load-library "mth-keys")
