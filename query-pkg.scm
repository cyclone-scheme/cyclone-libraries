(import (scheme base) (scheme write) (scheme read) (scheme file))
(call-with-input-file
  (car (command-line-arguments))
  (lambda (fp)
    (write 
      (cadr 
        (assoc 'ver (read-all fp))))))
