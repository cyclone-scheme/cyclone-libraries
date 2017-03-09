get-ver: get-ver.scm
	cyclone get-ver.scm

.PHONY: packages

packages: get-ver
	./create-index.sh
