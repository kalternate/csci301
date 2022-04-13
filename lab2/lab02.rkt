#lang racket

(define (gen-list start end)
  (if (<= start end)
      (append (list start) (gen-list (+ 1 start) end))
       '() 
      )
  )

(define (sum L)
  (if (null? L) 0
      (car
       (if (< (length L) 2)
               L
               (list (sum (append (list (+ (car L) (car (cdr L)))) (cdr(cdr L)))))
               )
           )
      )
  )

(define (retrieve-first-n n L)
  (if (<= n 0) '()
      (if (> n (length L)) L
          (append  (list (car L)) (retrieve-first-n (- n 1) (cdr L)))
          )
      )
  )

(define (pair-sum? L n)
  (if (<= (length L) 1) #f
      (if (= (+ (car L) (car (cdr L))) n) #t
          (pair-sum? (cdr L) n)
          )
      )
  )

