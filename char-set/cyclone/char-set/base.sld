(define-library (cyclone char-set base)
  (export (rename Integer-Set Char-Set)
          (rename iset? char-set?)
          immutable-char-set
          char-set-contains?)
  (import (scheme base)
          (cyclone iset base))
  (begin
    (define-syntax immutable-char-set
      (syntax-rules () ((immutable-char-set cs) cs)))
    (define (char-set-contains? cset ch)
      (iset-contains? cset (char->integer ch)))))
