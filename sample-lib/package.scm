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
  "install -m0644 cyclone/sample.o ~DATA~/cyclone"
  "install -m0755 cyclone/sample.so ~DATA~/cyclone"
  "install -m0644 cyclone/sample.meta ~DATA~/cyclone"
  "install -m0644 cyclone/sample.sld ~DATA~/cyclone")

;; Custom uninstall commands
(uninstall 
  "rm -f ~BIN~/main"
  "rm -f ~DATA~/cyclone/sample.o"
  "rm -f ~DATA~/cyclone/sample.so"
  "rm -f ~DATA~/cyclone/sample.meta"
  "rm -f ~DATA~/cyclone/sample.sld")

;; Test files to build and execute
(test "cyclone tests/test.scm && ./tests/test")
