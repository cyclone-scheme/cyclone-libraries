(define-library
  (pathname)
  ;; (scheme cyclone pathname)
  (import
    (scheme base)
    (string)
    ;; (scheme cyclone string)
    )
  (export path-strip-directory
          path-directory       
          path-extension
          path-strip-extension
          path-replace-extension
          path-absolute?
          path-relative?
          path-strip-leading-parents
          path-relative-to
          path-resolve
          path-normalize
          make-path)
  (include "pathname.scm"))

