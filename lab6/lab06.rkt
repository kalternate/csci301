; Keagan Edwards
; CSCI 301 - Lab 6
; 5/20/2022

#lang racket

(define (member? x L)
  (if (null? L) #f
      (if (equal? x (car L)) #t
          (member? x (rest L)))))


(define (set-insert x L)
  (if (member? x L)
      L
      (cons x L)))

(define (Reflexive-Closure L S)
  (if (null? S) L
      (Reflexive-Closure
       (set-insert (list (car S) (car S)) L)
       (cdr S))))

(define (Symmetric-Closure L)
  (foldl (lambda (x L)
                (set-insert x (set-insert (list (car (cdr x)) (car x)) L))
                ) '() L))

(define (Transitive-Closure L)
  (foldl
   (lambda (x P)
     (foldl
      (lambda (y Q)
        (if (eqv? (car (cdr x)) (car y))
                  (set-insert x (set-insert y (set-insert (list (car x) (car (cdr y))) Q)))
                  (set-insert x (set-insert y Q)))
        ) P L))
   '() L))

;(Reflexive-Closure '((a a) (b b) (c c)) '(a b c))
;(Reflexive-Closure '((a a) (b b)) '(a b c))
;(Reflexive-Closure '((a a) (a b) (b b) (b c)) '(a b c))
;(Reflexive-Closure '() '(a b c))

;(Symmetric-Closure '((a a) (a b) (b a) (b c) (c b)))
;(Symmetric-Closure '((a a) (a b) (a c)))
;(Symmetric-Closure '((a a) (b b)))
;(Symmetric-Closure '())

;(Transitive-Closure '((a b) (b c) (a c)))
;(Transitive-Closure '((a b) (b c)))
;(Transitive-Closure '((a b) (b a)))
;(Transitive-Closure '((a b) (b a) (a a)))
;(Transitive-Closure '((a b) (b a) (a a) (b b)))
;(Transitive-Closure '())