all: get-ver packages

get-ver: get-ver.scm
	cyclone get-ver.scm

.PHONY: all packages

packages: get-ver
	./create-index.sh
