(defun (sqrt-iter guess x)
    (if (good-enough guess x)
	guess
      (sqrt-iter (improve guess x)
		 x)))

(defun (improve guess x)
  (average guess (/ x guess)))

(defun (average x y)
    (/ (+ x y) 2))

(defun (good-enough guess x)
  (< (abs (- (square guess) x)) 0.001))

(defun (sqr x)
  (sqrt-iter 1.0 x))

(defun (abs x)
    (cond ((< x 0) (-x))
	   (else x)))

(defun (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
	  (else else-clause)))
(sqr 2)
(sqr 9)
