#lang racket

(provide power)

(define (power a n)
  (if (> n 1)
	(* 2 (power a (- n 1)))
	a))
