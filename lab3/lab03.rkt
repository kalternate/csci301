#lang racket

(define (member? x L)
  (if (null? L) #f
      (if (eqv? x (car L)) #t
          (member? x (rest L)))))

(define (subset? L1 L2)
  (if (null? L1) #t
      (if (member? (car L1) L2)
          (subset? (cdr L1) L2)
          #f)))

(define (set-equal? L1 L2)
    (and (subset? L1 L2) (subset? L2 L1)))


(define (union S1 S2)
  (if (null? S2) S1
      (if (member? (car S2) S1)
          (union S1 (cdr S2))
          (union (cons (car S2) S1) (cdr S2)))))
          
                    


(define (intersect S1 S2)
  (if (subset? S1 S2) S1
      (if (member? (car S1) S2)
          (intersect (cdr (cons S1 (car S1))) S2)
          (intersect (cdr S1) S2))))
          