;; sbcl --script caesar.lisp
(defun rot (chr shift)
	(if (and (>= (char-code chr) 65) (<= (char-code chr) 90))
		(code-char (+ (mod (+ shift (- (char-code chr) 65)) 26) 65))
		(code-char (char-code chr))
	)
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

(print (encrypt "Attack at Once" 4))
(print (decrypt "EXXEGO EX SRGI" 4))
(print (solve "abcdeFGHIJKLmnopqrstuvwxyz ,?;{[()]}" 26))

;2 hours