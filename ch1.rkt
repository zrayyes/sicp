#lang sicp
; Exercise 1.2
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2)(- 2 7)))


; Exercise 1.3
(define (square x) (* x x))
(define (sum-of-squares x y) (+ (square x) (square y)))

(define (sum-of-two-largest-squares x z y)
  (cond
    ((and (< x z) (< x y)) (sum-of-squares z y))
    ((and (< z x) (< z y)) (sum-of-squares x y))
    (else (sum-of-squares x z))
    )
  )

(sum-of-two-largest-squares 1 2 3)
(sum-of-two-largest-squares 2 1 3)
(sum-of-two-largest-squares 3 2 1)