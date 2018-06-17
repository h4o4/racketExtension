#lang racket

(define (decimal->binary n)
  (let ([m (modulo n 2)])
    (if (zero? n)
      '()
      (cons m (decimal->binary (/ (- n m) 2))))))

(define (modulo-exp a e n)
   (let ([x a]
         [bin-e (decimal->binary e)])
     (modulo (foldl *
                    1
                    (for/list ([i bin-e]
                               #:when (positive? i))
                               (begin0 (* i x)
                                       (set! x
                                             (modulo (* x x) n))))) n)))
      
    