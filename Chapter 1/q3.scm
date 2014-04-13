(define (square a)
  (* a a))

(define (>= a b)
  (or (= a b) (> a b)))

(define (sum-of-squares a b c)
  (cond ((and (>= a c) (>= b c)) (+ (square a) (square b)))
        ((and (>= a b) (>= c b)) (+ (square a) (square c)))
        ((and (>= b a) (>= c a)) (+ (square b) (square c)))))

(sum-of-squares 10 9 331)