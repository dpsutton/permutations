;;; test-helper --- Test helper for permutations

;;; Commentary:
;; test helper inspired from https://github.com/tonini/overseer.el/blob/master/test/test-helper.el

;;; Code:

(require 'f)

(defvar cpt-path
  (f-parent (f-this-file)))

(defvar permutations-test-path
  (f-dirname (f-this-file)))

(defvar permutations-root-path
  (f-parent permutations-test-path))

(defvar permutations-sandbox-path
  (f-expand "sandbox" permutations-test-path))

(when (f-exists? permutations-sandbox-path)
  (error "Something is already in %s. Check and destroy it yourself" permutations-sandbox-path))

(defmacro within-sandbox (&rest body)
  "Evaluate BODY in an empty sandbox directory."
  `(let ((default-directory permutations-sandbox-path))
     (when (f-exists? permutations-sandbox-path)
       (f-delete default-directory :force))
     (f-mkdir permutations-sandbox-path)
     ,@body
     (f-delete default-directory :force)))

(require 'ert)
(require 'permutations)

(provide 'test-helper)
;;; test-helper.el ends here
