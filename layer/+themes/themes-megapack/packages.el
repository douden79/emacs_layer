;;; packages.el --- Themes Mega-Pack Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(setq themes-megapack-packages
  '(
    color-theme-sanityinc-solarized
    darkokai-theme
    monokai-theme
    ))

;; define programmatically the init functions
(dolist (pkg themes-megapack-packages)
  (eval `(defun ,(intern (format "themes-megapack/init-%S" pkg)) nil)))

(defun themes-megapack/init-darkokai-theme ()
  (setq darkokai-mode-line-padding 1))
