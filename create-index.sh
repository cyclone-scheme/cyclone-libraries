#!/bin/bash

#REPODIR=../repo
REPODIR=../repo
INDEX=${REPODIR}/index.dat
mkdir -p $REPODIR
rm -f ${INDEX}
touch ${INDEX}

for D in *; do
    #if [ -d "${D}" ] && [ "${D}" -ne "${REPODIR}" ]; then
    #if [[ -d "${D}" && "${D}" -ne "${REPODIR}" ]]; then
    if [ -d "${D}" ]; then
        echo "${D}"   # your processing here
        tar -cf "${D}".tar "${D}" && gzip -f "${D}".tar
        VERSION=`./get-ver "${D}"/package.scm`
        #echo $VERSION
        mv "${D}".tar.gz "${D}"-"${VERSION}".tar.gz
        echo "( ${D} ${VERSION} ${D}-${VERSION}.tar.gz )" >> ${INDEX}
    fi
done
