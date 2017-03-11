;; Package information for the sample library
(name    "Sample Library")
(desc    "A sample library for demonstration purposes")
(ver     0.1)
(rel     1)
(license "MIT")
(groups)
(depends)
(conflicts)
(replaces)
(build
  "cyclone main.scm"
  "cyclone cyclone/sample.sld")

;; There are several aliases used in the next 2 directives:
;; ~BIN~  - Directory for binaries
;; ~DATA~ - Directory for scheme libraries to be installed 
;; ~LIB~ - Directory for C libraries (not normally used)
;; ~INCLUDE~ - Directory for C headers (not normally used)
(install 
  "mkdir -p ~BIN~"
  "install -m0755 main ~BIN~/"
  "mkdir -p ~DATA~/cyclone"
  "install -m0644 cyclone/sample.sld ~DATA~/cyclone"
  "install -m0644 cyclone/sample.o ~DATA~/cyclone"
  "install -m0644 cyclone/sample.meta ~DATA~/cyclone"
  )

;; Custom uninstall commands
(uninstall 
  "echo 'uninstall cmd 1'"
  "echo 'uninstall cmd 2'")
;; Test files to build and execute
(test "cyclone tests/test.scm && ./tests/test")
