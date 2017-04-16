;; Package information for the library
(name    "char-set")
(desc    "Chibi's char-set library")
(ver     0.1)
(rel     1)
(license "BSD")
(groups)
(depends)
(conflicts)
(replaces)
(build
 "cyclone -A . cyclone/char-set/base.sld"
 "cyclone -A . cyclone/char-set/ascii.sld"
 "cyclone -A . cyclone/char-set/full.sld"
 "cyclone -A . cyclone/char-set/boundary.sld"
 "cyclone -A . cyclone/char-set/extras.sld"
 "cyclone -A . cyclone/char-set.sld")

;; There are several aliases used in the next 2 directives:
;; ~BIN~  - Directory for binaries
;; ~DATA~ - Directory for scheme libraries to be installed 
;; ~LIB~ - Directory for C libraries (not normally used)
;; ~INCLUDE~ - Directory for C headers (not normally used)
(install 
 "mkdir -p ~DATA~/cyclone/char-set"
 "install -m0644 cyclone/char-set/base.o ~DATA~/cyclone/char-set"
 "install -m0644 cyclone/char-set/base.so ~DATA~/cyclone/char-set"
 "install -m0644 cyclone/char-set/base.meta ~DATA~/cyclone/char-set"
 "install -m0644 cyclone/char-set/base.sld ~DATA~/cyclone/char-set"
 "install -m0644 cyclone/char-set/ascii.o ~DATA~/cyclone/char-set"
 "install -m0644 cyclone/char-set/ascii.so ~DATA~/cyclone/char-set"
 "install -m0644 cyclone/char-set/ascii.meta ~DATA~/cyclone/char-set"
 "install -m0644 cyclone/char-set/ascii.sld ~DATA~/cyclone/char-set"
 "install -m0644 cyclone/char-set/full.o ~DATA~/cyclone/char-set"
 "install -m0644 cyclone/char-set/full.so ~DATA~/cyclone/char-set"
 "install -m0644 cyclone/char-set/full.meta ~DATA~/cyclone/char-set"
 "install -m0644 cyclone/char-set/full.sld ~DATA~/cyclone/char-set"
 "install -m0644 cyclone/char-set/boundary.o ~DATA~/cyclone/char-set"
 "install -m0644 cyclone/char-set/boundary.so ~DATA~/cyclone/char-set"
 "install -m0644 cyclone/char-set/boundary.meta ~DATA~/cyclone/char-set"
 "install -m0644 cyclone/char-set/boundary.sld ~DATA~/cyclone/char-set"
 "install -m0644 cyclone/char-set/extras.o ~DATA~/cyclone/char-set"
 "install -m0644 cyclone/char-set/extras.so ~DATA~/cyclone/char-set"
 "install -m0644 cyclone/char-set/extras.meta ~DATA~/cyclone/char-set"
 "install -m0644 cyclone/char-set/extras.sld ~DATA~/cyclone/char-set"
 "install -m0644 cyclone/char-set.o ~DATA~/cyclone"
 "install -m0644 cyclone/char-set.so ~DATA~/cyclone"
 "install -m0644 cyclone/char-set.meta ~DATA~/cyclone"
 "install -m0644 cyclone/char-set.sld ~DATA~/cyclone")

;; Custom uninstall commands
(uninstall
 "rm -f ~DATA~/cyclone/char-set/base.o"
 "rm -f ~DATA~/cyclone/char-set/base.so"
 "rm -f ~DATA~/cyclone/char-set/base.meta"
 "rm -f ~DATA~/cyclone/char-set/base.sld"
 "rm -f ~DATA~/cyclone/char-set/ascii.o"
 "rm -f ~DATA~/cyclone/char-set/ascii.so"
 "rm -f ~DATA~/cyclone/char-set/ascii.meta"
 "rm -f ~DATA~/cyclone/char-set/ascii.sld"
 "rm -f ~DATA~/cyclone/char-set/full.o"
 "rm -f ~DATA~/cyclone/char-set/full.so"
 "rm -f ~DATA~/cyclone/char-set/full.meta"
 "rm -f ~DATA~/cyclone/char-set/full.sld"
 "rm -f ~DATA~/cyclone/char-set/boundary.o"
 "rm -f ~DATA~/cyclone/char-set/boundary.so"
 "rm -f ~DATA~/cyclone/char-set/boundary.meta"
 "rm -f ~DATA~/cyclone/char-set/boundary.sld"
 "rm -f ~DATA~/cyclone/char-set/extras.o"
 "rm -f ~DATA~/cyclone/char-set/extras.so"
 "rm -f ~DATA~/cyclone/char-set/extras.meta"
 "rm -f ~DATA~/cyclone/char-set/extras.sld"
 "rm -f ~DATA~/cyclone/char-set.o"
 "rm -f ~DATA~/cyclone/char-set.so"
 "rm -f ~DATA~/cyclone/char-set.meta"
 "rm -f ~DATA~/cyclone/char-set.sld")

;; Test files to build and execute
;(test "cyclone tests/test.scm && ./tests/test")

