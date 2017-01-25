;;; init.el --- Babel Initialization File
;;; refer to space emacs environment.

;; Increase gc-cons-threshold, depending on your system you may set it back to a
;; lower value in your dotfile (function `dotspacemacs/user-config')
(setq gc-cons-threshold 100000000)

(load-file (concat (file-name-directory load-file-name)
                   "core/core-load-paths.el"))

(require 'core-emacs)
;;(spacemacs/init)
;;(spacemacs/maybe-install-dotfile)
;;(configuration-layer/sync)
;;(spacemacs-buffer/display-info-box)
;;(spacemacs/setup-startup-hook)
(require 'server)
(unless (server-running-p) (server-start))
