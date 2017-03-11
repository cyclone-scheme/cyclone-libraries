(import (scheme base) (scheme write) (scheme read) (scheme file))
(call-with-input-file
  (car (command-line-arguments))
  (lambda (fp)
    (cond 
      ((= (length (command-line-arguments)) 2)
       (write 
         (cadr 
           (assoc 'ver (read-all fp)))))
      (else
       (write 
         (read-all fp)))
      )))
