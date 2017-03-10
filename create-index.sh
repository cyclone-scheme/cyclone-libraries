#!/bin/bash

for D in *; do
    if [ -d "${D}" ]; then
        #echo "${D}"   # your processing here
        tar -cf "${D}".tar "${D}" && gzip -f "${D}".tar
        VERSION=`./get-ver "${D}"/package.scm`
        #echo $VERSION
        mv "${D}".tar.gz "${D}"-"${VERSION}".tar.gz
    fi
done
