#lang racket

(provide read-list)

(define (read-list) 
    (let ([x (read)]) 
        (if (eof-object? x) 
            '() 
            (cons x (read-list)))))