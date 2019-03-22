; WARNING: This file will be overwritten if CS50 vagrant is reprovisioned.
; If you prefer something else, create ~/.emacs.custom

; CS50 .emacs customizations
(global-set-key "\C-xg" 'goto-line)
(global-set-key "\C-xc" 'compile)
(setq compile-command "make -k ")

;; If you want additional or different customizations, create .emacs.custom
; syntax: (load FILE NOERROR NOMESSAGE NOSUFFIX MUST-SUFFIX)
(load ".emacs.custom" t t nil nil)

