(define (read-list)
  (let ([x (read)])
	(if (eof-object? x)
	    null
		(cons x (read-list)))))
