;; Package information for the library
(name    "iset")
(desc    "Chibi's iset library")
(ver     0.1)
(rel     1)
(license "BSD")
(groups)
(depends)
(conflicts)
(replaces)
(build
 "cyclone cyclone/iset/base.sld"
 "cyclone cyclone/iset/constructors.sld"
 "cyclone cyclone/iset/iterators.sld"
 "cyclone cyclone/iset/optimize.sld"
 "cyclone cyclone/iset.sld")

;; There are several aliases used in the next 2 directives:
;; ~BIN~  - Directory for binaries
;; ~DATA~ - Directory for scheme libraries to be installed 
;; ~LIB~ - Directory for C libraries (not normally used)
;; ~INCLUDE~ - Directory for C headers (not normally used)
(install 
 "mkdir -p ~DATA~/cyclone/iset"
 "install -m0644 cyclone/iset/base.o ~DATA~/cyclone/iset"
 "install -m0644 cyclone/iset/base.so ~DATA~/cyclone/iset"
 "install -m0644 cyclone/iset/base.meta ~DATA~/cyclone/iset"
 "install -m0644 cyclone/iset/base.sld ~DATA~/cyclone/iset"
 "install -m0644 cyclone/iset/constructors.o ~DATA~/cyclone/iset"
 "install -m0644 cyclone/iset/constructors.so ~DATA~/cyclone/iset"
 "install -m0644 cyclone/iset/constructors.meta ~DATA~/cyclone/iset"
 "install -m0644 cyclone/iset/constructors.sld ~DATA~/cyclone/iset"
 "install -m0644 cyclone/iset/iterators.o ~DATA~/cyclone/iset"
 "install -m0644 cyclone/iset/iterators.so ~DATA~/cyclone/iset"
 "install -m0644 cyclone/iset/iterators.meta ~DATA~/cyclone/iset"
 "install -m0644 cyclone/iset/iterators.sld ~DATA~/cyclone/iset"
 "install -m0644 cyclone/iset/optimize.o ~DATA~/cyclone/iset"
 "install -m0644 cyclone/iset/optimize.so ~DATA~/cyclone/iset"
 "install -m0644 cyclone/iset/optimize.meta ~DATA~/cyclone/iset"
 "install -m0644 cyclone/iset/optimize.sld ~DATA~/cyclone/iset"
 "install -m0644 cyclone/iset.o ~DATA~/cyclone"
 "install -m0644 cyclone/iset.so ~DATA~/cyclone"
 "install -m0644 cyclone/iset.meta ~DATA~/cyclone"
 "install -m0644 cyclone/iset.sld ~DATA~/cyclone")

;; Custom uninstall commands
(uninstall
 "rm -f ~DATA~/cyclone/iset/base.o"
 "rm -f ~DATA~/cyclone/iset/base.so"
 "rm -f ~DATA~/cyclone/iset/base.meta"
 "rm -f ~DATA~/cyclone/iset/base.sld"
 "rm -f ~DATA~/cyclone/iset/constructors.o"
 "rm -f ~DATA~/cyclone/iset/constructors.so"
 "rm -f ~DATA~/cyclone/iset/constructors.meta"
 "rm -f ~DATA~/cyclone/iset/constructors.sld"
 "rm -f ~DATA~/cyclone/iset/iterators.o"
 "rm -f ~DATA~/cyclone/iset/iterators.so"
 "rm -f ~DATA~/cyclone/iset/iterators.meta"
 "rm -f ~DATA~/cyclone/iset/iterators.sld"
 "rm -f ~DATA~/cyclone/iset/optimize.o"
 "rm -f ~DATA~/cyclone/iset/optimize.so"
 "rm -f ~DATA~/cyclone/iset/optimize.meta"
 "rm -f ~DATA~/cyclone/iset/optimize.sld"
 "rm -f ~DATA~/cyclone/iset.o"
 "rm -f ~DATA~/cyclone/iset.so"
 "rm -f ~DATA~/cyclone/iset.meta"
 "rm -f ~DATA~/cyclone/iset.sld")

;; Test files to build and execute
(test "cyclone tests/test.scm && ./tests/test")
