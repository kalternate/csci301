; Keagan Edwards
; CSCI 301 Lab 5
; May 2nd, 2022

#lang racket

(define (member? x L)
  (if (null? L) #f
      (if (maybe-set-equal? x (car L)) #t
          (member? x (rest L)))))

(define (maybe-set-equal? x y)
  (if (and (list? x) (list? y))
      (set-equal? x y)
      (eqv? x y)))

(define (set-equal? L1 L2)
    (and (subset? L1 L2) (subset? L2 L1)))

(define (Reflexive? L S)
  (if (null? S) #t
      (if (member? (list (car S) (car S)) L)
          (Reflexive? L (cdr S))
          #f
          )))

(define (Symmetric? L)
  (if (null? L) #t
      (if (list? (member (list (car (cdr (car L))) (car (car L))) L))
          (Symmetric? (remove (list (car (cdr (car L))) (car (car L))) (cdr L)))
          #f
          )))


(define (Transitive? L)
  (andmap (lambda (P)
            (andmap (lambda (Q)
                      (if (eqv? (car (cdr P)) (car Q))
                                (list? (member (list (car P) (car (cdr Q))) L))
                                #t
                                )
                      )L))L))


; (display "Reflexive?\n")
; (Reflexive? '((a a) (b b) (c c)) '(a b c)) 
; (Reflexive? '((a a) (b b)) '(a b c))  
; (Reflexive? '((a a) (a s) (b b) (c c)) '(a b c)) 
; (Reflexive? '() '())

; (display "Symmetric?\n") 
; (Symmetric? '((a a) (a b) (b a) (b c) (c b)))
; (Symmetric? '((a a) (a b) (a c) (c a)))
; (Symmetric? '((a a) (b b)))
; (Symmetric? '())

; (display "Transitive? \n")     
; (Transitive? '((a b) (b c) (a c)))   
; (Transitive? '((a a) (b b) (c c)))
; (Transitive? '((a b) (b a)))
; (Transitive? '((a b) (b a) (a a)))
; (Transitive? '((a b) (b a) (a a) (b b)))
; (Transitive? '())


