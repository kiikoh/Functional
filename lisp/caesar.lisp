;; sbcl --script caesar.lisp
(defun rot (char shift)
	(code-char (+ (mod (+ shift (- (char-code char) 65)) 26) 65))
)

(defun encrypt (word shift)
	(map 'string #'(lambda (x) (rot x shift)) (coerce (string-upcase word) 'list))
)

(defun decrypt (word shift)
	(encrypt word (- 26 shift))
)

(defun solve (word maxShift)
	(if (/= maxShift 0)
  		(cons (decrypt word maxShift) (solve word (- maxShift 1))
	))
)

(print (decrypt "ibm" 1))
(print (encrypt "hal" 1))
(print (solve "hal" 26))

;2 hours