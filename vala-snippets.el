;;; vala-snippets.el --- Yasnippets for Vala

;; Copyright (C) 2015 Daniel Gopar

;; Author: Daniel Gopar
;; URL: https://github.com/gopar/vala-snippets
;; Package-Requires: ((yasnippet "0.8.0"))

;;; Commentary:

;;; Code:

(require 'yasnippet)

(defvar vala-snippets-root
  (file-name-directory (or load-file-name (buffer-file-name))))

;;;###autoload
(defun vala-snippets-initialize ()
  (let ((snip-dir (expand-file-name "snippets" vala-snippets-root)))
   (when (boundp 'yas-snippet-dirs)
      (add-to-list 'yas-snippet-dirs snip-dir t))
    (yas-load-directory snip-dir)))

;;;###autoload
(eval-after-load 'yasnippet
  '(vala-snippets-initialize))

(provide 'vala-snippets)

;;; vala-snippets.el ends here
