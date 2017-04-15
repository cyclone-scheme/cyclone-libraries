;; Package information for the library
(name    "iset")
(desc    "Chibi's cursor-oriented string library")
(ver     0.1)
(rel     1)
(license "BSD")
(groups)
(depends)
(conflicts)
(replaces)
(build
 "cyclone -A . cyclone/string.sld")

;; There are several aliases used in the next 2 directives:
;; ~BIN~  - Directory for binaries
;; ~DATA~ - Directory for scheme libraries to be installed 
;; ~LIB~ - Directory for C libraries (not normally used)
;; ~INCLUDE~ - Directory for C headers (not normally used)
(install 
 "mkdir -p ~DATA~/cyclone"
 "install -m0644 cyclone/string.o ~DATA~/cyclone"
 "install -m0644 cyclone/string.so ~DATA~/cyclone"
 "install -m0644 cyclone/string.meta ~DATA~/cyclone"
 "install -m0644 cyclone/string.sld ~DATA~/cyclone")

;; Custom uninstall commands
(uninstall
 "rm -f ~DATA~/cyclone/string.o"
 "rm -f ~DATA~/cyclone/string.so"
 "rm -f ~DATA~/cyclone/string.meta"
 "rm -f ~DATA~/cyclone/string.sld")

;; Test files to build and execute
(test "cyclone tests/test.scm && ./tests/test")
