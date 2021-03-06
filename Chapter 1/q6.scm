(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (square x)
  (* x x))

#; sqrt-iter implemented with standard if
#;(define (sqrt-iter guess x)
#;  (if (good-enough? guess x)
#;    guess
#;    (sqrt-iter (improve guess x) x)))
#;

(define (sqrt x)
  (sqrt-iter 1.0 x))


#; new-if procedure attempting to replace if
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

#; sqrt-iter implemented with the new-if procedure
(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))
