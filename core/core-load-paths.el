;;; core-load-paths.el -- core file
(defun add-to-load-path (dir) (add-to-list 'load-path dir))
(defun add-to-load-path-if-exists (dir)
  "If DIR exists in the file system, add it to `load-path'."
  (when (file-exists-p dir)
      (add-to-load-path dir)))

;; define paths
(defvar start-directory
  user-emacs-directory
  "Babel start directory")
(defconst core-directory
    (expand-file-name (concat start-directory "core/"))
    "core directory.")
(defconst cache-directory
  (expand-file-name (concat user-emacs-directory ".cache/"))
  "emacs storage area for persistent files")
(defconst auto-save-directory
  (expand-file-name (concat cache-directory "auto-save/"))
  "emacs auto-save directory")
(defconst docs-directory
  (expand-file-name (concat start-directory "doc/"))
  "emacs documentation directory.")
(defconst spacemacs-news-directory
  (expand-file-name (concat start-directory "news/"))
  "emacs News directory.")

(defconst user-home-directory
  (expand-file-name "~/")
  "User home directory (~/).")

(defconst pcache-directory
  (concat cache-directory "pcache/"))
(unless (file-exists-p cache-directory)
  (make-directory cache-directory))
