

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (square x)
  (* x x))


(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))


(define (abs x)
  (if (< x 0)
      (- x)
      x))


;; (define (sqrt-iter guess x)
;;   (if (good-enough? guess x)
;;       guess
;;       (sqrt-iter (improve guess x) 
;;                  x)))


(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) 
                 x)))



;; okay so new if is a function, which means it wants to evaluate its inputs due to applicative order. 

;; It's two inputs are guess and (sqrt-iter (improve guess x) x)). The second recurses and uses new-if again, which has two inputs, which are the same as the first recurse. And so it keeps going