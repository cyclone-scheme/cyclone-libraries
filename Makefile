all: query-pkg packages

query-pkg: query-pkg.scm
	cyclone query-pkg.scm

.PHONY: all packages clean

packages: query-pkg
	./create-index.sh

clean:
	rm -f query-pkg query-pkg.c query-pkg.o
