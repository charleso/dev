(require 'cl)

(labels ((add-path (p)
        (add-to-list 'load-path
                     (concat (getenv "EDOTDIR") (concat "/" p)))))

(add-path "lib/extra")
(add-path "lib/yasnippet")
(add-path "lib/haskell-mode")
(add-path "lib/ido-ubiquitous")
(add-path "src")
)

(labels ((add-exec-path (p)
        (add-to-list 'exec-path
                     (concat (getenv "EDOTDIR") (concat "/" p)))))

)
