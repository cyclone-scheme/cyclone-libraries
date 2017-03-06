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
(files "main.scm" (cyclone sample) #;"noone.scm")
;; Custom install commands
(install "echo 'install cmd 1'"
         "echo 'install cmd 2'")
;; Custom uninstall commands
(uninstall "echo 'uninstall cmd 1'"
           "echo 'uninstall cmd 2'")
;; Test files to build and execute
(test "cyclone tests/test.scm && ./tests/test")
