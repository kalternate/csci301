#lang racket

; Keagan Edwards
; CSCI 301 Lab 7
; June 1st, 2022

(define (bag-difference L R)
  (if (null? R) L
      (bag-difference (remove (car R) L) (cdr R))
      )
  )

(define (bag-union L R)
  (if (null? R) L
      (if (>= (length (filter (lambda (x) (eqv? x (car R))) L))  (length (filter (lambda (x) (eqv? x (car R))) R)))
          (bag-union L (cdr R))
          (bag-union (append (remove* (list (car R)) L) (filter (lambda (x) (eqv? x (car R))) R)) (cdr R))
          )
      )
  )

(define (bag-intersection L R)
  	(foldl 
	  (lambda (x O) 
	    (if (< (length (filter (lambda (y) (eqv? x y) ) O)) (min (length (filter (lambda (y) (eqv? x y)) L)) (length (filter (lambda (y) (eqv? x y)) R))))
		(cons x O)
		O
	     )
	   ) '() (append L R))
  )

; (bag-intersection '(a a b a) '(b a a))
; (bag-intersection '(a b a a) '(a b c))
; (bag-intersection '(a b c) '(a b a a))
; (bag-intersection '(a b c) '(a b c))
; (bag-intersection '() '(a b a a))
; (bag-intersection '(a b a a) '())
