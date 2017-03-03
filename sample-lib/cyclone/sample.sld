;; A sample library
(define-library (cyclone sample)
  (import (scheme base))
  (export info)
  (begin
    (define (info)
      'a-sample-library)))
