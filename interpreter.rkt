#lang racket

(provide evaluate)

(define (evaluate expr env)
  (match expr
    [1 1]
    [(? symbol? x) (env x)]
    [`(,operation ,operand)
     ((evaluate operation env)
      (evaluate operand env))]
    [`(lambda ,x ,body)
     (lambda (arg)
       (evaluate body (lambda (y)
                        (if (eq? x y)
                            arg
                            (env y)))))]))
