;; Exercise 1.4.  Observe that our model of evaluation allows for combinations whose operators are compound expressions. Use this observation to describe the behavior of the following procedure:

;; (define (a-plus-abs-b a b)
;; ((if (> b 0) + -) a b))


;; if b is positive, add a and b. Otherwise, subtract b from a (in other words, add the absolute value of b to a)