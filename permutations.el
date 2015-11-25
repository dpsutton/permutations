;;; permutations.el --- Summary: compute permutations of strings
;; Copyright
;; Author: Dan Sutton
;; Maintainer: Dan Sutton
;; URL: https://github.com/dpsutton/permutations.git
;; Version: 0.0.1
;;; Commentary:
;; We want to permute all strings. so lets do that
;;; Code:

(defun p-length (string)
  "Return length of STRING."
  (length string))

(defun p-last-letter (string)
  "Return the last letter of STRING."
  (substring string -1 nil))

(provide 'permutations)
;;; permutations.el ends here
