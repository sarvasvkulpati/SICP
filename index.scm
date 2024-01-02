; simple expression

(+ 3 1)

; compound expression

(+ (* 3 4) (- 10 5))

; defining a variable 

(define pi 3.14159)
(display pi) 


; defining a procedure
(define (square x) (* x x))


; cond

(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))


; cond with else

(define (abs x)
  (cond ((< x 0) (- x))
        (else x)))

; if 

(define (abs x)
 (if (< x 0)
     (- x) 
     x))


; logical operators 

(and (> 3 2) (< 3 5))
(or (< 3 2) (< 3 5))
(not (< 3 2))


