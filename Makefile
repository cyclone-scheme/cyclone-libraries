all: query-pkg packages

query-pkg: query-pkg.scm
	cyclone query-pkg.scm

.PHONY: all packages

packages: query-pkg
	./create-index.sh
