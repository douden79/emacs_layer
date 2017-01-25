;;; core-load-paths.el --- emacs Core File

(defun add-to-load-path (dir) (add-to-list 'load-path dir))

(defun add-to-load-path-if-exists (dir)
  "If DIR exists in the file system, add it to `load-path'."
  (when (file-exists-p dir)
      (add-to-load-path dir)))

;; paths
(defvar start-directory
  user-emacs-directory
  "start directory.")
(defconst core-directory
  (expand-file-name (concat start-directory "core/"))
  "core directory.")
(defconst info-directory
  (expand-file-name (concat core-directory "info/"))
  "info files directory")
(defconst release-notes-directory
  (expand-file-name (concat info-directory "release-notes/"))
  "release notes directory")
(defconst banner-directory
  (expand-file-name (concat core-directory "banners/"))
  "banners directory.")
(defconst banner-official-png
  (expand-file-name (concat banner-directory "img/png"))
  "official banner image.")
(defconst badge-official-png
  (expand-file-name (concat banner-directory
                            "img/badge.png"))
  "official badge image.")
(defconst purple-heart-png
  (expand-file-name (concat banner-directory "img/heart.png"))
  "Purple heart emoji.")
(defconst cache-directory
  (expand-file-name (concat user-emacs-directory ".cache/"))
  "storage area for persistent files")
(defconst auto-save-directory
  (expand-file-name (concat cache-directory "auto-save/"))
  "auto-save directory")
(defconst docs-directory
  (expand-file-name (concat start-directory "doc/"))
  "documentation directory.")
(defconst news-directory
  (expand-file-name (concat start-directory "news/"))
  "News directory.")
(defconst assets-directory
  (expand-file-name (concat start-directory "assets/"))
  "assets directory.")
(defconst test-directory
  (expand-file-name (concat start-directory "tests/"))
  "tests directory.")

(defconst user-home-directory
  (expand-file-name "~/")
  "User home directory (~/).")
(defconst pcache-directory
  (concat cache-directory "pcache/"))
(unless (file-exists-p cache-directory)
    (make-directory cache-directory))

;; load paths
(mapc 'add-to-load-path
      `(
        ,core-directory
        ,(concat core-directory "libs/")
        ,(concat core-directory "aprilfool/")
        ))
