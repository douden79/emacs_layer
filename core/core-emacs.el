;;; core-spacemacs.el --- emacs Core File
(setq message-log-max 16384)
(defconst emacs-start-time (current-time))

;; support themes
(require 'core-themes-support)
(require 'core-configuration-layer)

(provide 'core-emacs)
