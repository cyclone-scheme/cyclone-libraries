(import (cyclone sample)
        (scheme base)
        (scheme cyclone test))

(test-group
  "sample/basic"
  (test-assert 'a-sample-library (info)))
