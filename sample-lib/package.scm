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
;; List of files to compile and install
;; Can list each filename as a string (EG: "cyclone/sample.sld)
;; or as the installed library name (sld files only)
(files (cyclone sample) "noone.scm")
;; Custom install commands
(install "")
;; Custom uninstall commands
(uninstall "")
;; Test files to build and execute
(tests (tests test.scm))
