; take three numbers as args and returns sum of squares of 2 larger numbers


(define (square x) (* x x))


(define (sum-of-squares-of-two-largest a b c)
  (cond 
    ((and (< a b) (< a c)) (+ (square b) (square c)))
    ((and (< b a) (< b c)) (+ (square a) (square c)))
    ((and (< c a) (< c b)) (+ (square a) (square b)))
    (else (+ (square a) (square b)))))


(sum-of-squares-of-two-largest 1 2 3)
(sum-of-squares-of-two-largest 1 2 2)
(sum-of-squares-of-two-largest 2 2 2)

