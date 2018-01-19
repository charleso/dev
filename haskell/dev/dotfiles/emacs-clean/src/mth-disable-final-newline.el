(defun disable-final-newline ()
    (interactive)
    (set (make-local-variable 'require-final-newline) nil))
