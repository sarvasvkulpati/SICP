# Working notes for SICP


## Chapter 1

I love this description of computers
> “A computational process is indeed much like a sorcerer's idea of a spirit. It cannot be seen or touched. It is not composed of matter at all. However, it is very real. It can perform intellectual work. It can answer questions. It can affect the world by disbursing money at a bank or by controlling a robot arm in a factory. The programs we use to conjure processes are like a sorcerer's spells. They are carefully composed from symbolic expressions in arcane and esoteric programming languages that prescribe the tasks we want our processes to perform.”

Programming languages have 3 ways to combine ideas into more complex ones. 
- primitive expressions
- means of combination 
- means of abstraction: compound elements can be named and manipulated as units

Programming deals with procedures and data



when we evaluate
- numerals are simply the numbers they name
- operators are machine sequences
- other names are objects associated with them in the environment


One way of thinking about procedures:

if you have  `(f 5`, where f is `(sum-of-squares (+ a 1) (* a 2))`, we replace the formal parameter a with argument 5 to make (sum-of-squares `(+ 5 1) (* 5 2))` then evaluate

typical interpreters don't do this by text manipylation, usually it happens with a local environment. But this is a simple model that the book successively builds up into more complicated models

there's normal order evaluation where you'd sub operands for paramenters until their values were needed. 

e.g `(f 5)` becomes 

```
(sum-of-squares (+ 5 1) (* 5 2))

(+    (square (+ 5 1))      (square (* 5 2))  )

(+    (* (+ 5 1) (+ 5 1))   (* (* 5 2) (* 5 2)))

followed by the reductions

(+         (* 6 6)             (* 10 10))

(+           36                   100)
```

instead of 

```
(sum-of-squares (+ 5 1) (* 5 2))

(+ (square 6) (square 10))

(+ (* 6 6) (* 10 10))

(+ 36 100)

136
```


%%card

%question
you're given the following function definitions:

```
(define (square x) (* x x))
```
```
(define (sum-of-squares x y)
    (+ (square x) (square y)))
```
```
(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))
```

write out the normative and applicative order evaluations of both and briefly explain the difference

%question


%answer

normative

```
(sum-of-squares (+ 5 1) (* 5 2))

(+    (square (+ 5 1))      (square (* 5 2))  )

(+    (* (+ 5 1) (+ 5 1))   (* (* 5 2) (* 5 2)))

followed by the reductions

(+         (* 6 6)             (* 10 10))

(+           36                   100)
```

applicative

```
(sum-of-squares (+ 5 1) (* 5 2))

(+ (square 6) (square 10))

(+ (* 6 6) (* 10 10))

(+ 36 100)

136
```
Applicative first evaluates the operator and operands and then applies the resulting procedure to the resulting arguments. 

Normative does not evaluate the operands until their values were needed. Instead it would first substitute operand expressions for parameters until it obtained an expression involving only primitive operators, and would then perform the evaluation

%answer

%%






