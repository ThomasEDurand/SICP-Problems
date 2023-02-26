#1.2
(/ (+ 5 (+ 4 (- 2 (- 3 (+ 6 (/ 4 5)))))) (* 3 (* (* 6 2) (- 2 7))))

#1.3
(define (square x) (* x x))
(define (sumSq x y) (+ (square x) (square y)))
(define (sumGreaterSquares a b c)
  (if (and (< a b) (< a c)) (sumSq b c))
  (if (and (< b a) (< b c)) (sumSq a c))
  (if (and (< c a) (< c b)) (sumSq a b)))
		   
(sumGreaterSquares 2 3 4)

#1.4
# Add b to a if b is postive, subtract b from a if it is negative-argument

#1.5
# The program will halt if it is in applicative order, it will halt in normal order
