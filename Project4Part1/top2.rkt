;#lang eopl
(module top2 (lib "eopl.ss" "eopl")
  
  ;; top level module.  Loads all required pieces.
  ;; Run the test suite with (run-all).

  (require "top.rkt")
  (require "data-structures.rkt")
  (require "environments.rkt")
  (require "interp.rkt")
  (require "lang.rkt")

  (provide run2)

  (define run2
    (lambda (string env)
      (vop (scan&parse string) env)))
  
  (define vop
    (lambda (pgm env)
      (cases program pgm
        (a-program (exp1)
                 (value-of exp1 env)))))
   
  
  )




