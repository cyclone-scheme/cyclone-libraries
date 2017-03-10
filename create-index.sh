#!/bin/bash

#REPODIR=../repo
REPODIR=_packages
INDEX=${REPODIR}/index.dat
mkdir -p $REPODIR
rm -f ${INDEX}
rm -f ${REPODIR}/*.gz
touch ${INDEX}

for D in *; do
    if [ -d "${D}" ] && [ "${D}" != "${REPODIR}" ]; then
    #if [[ -d "${D}" && "${D}" -ne "${REPODIR}" ]]; then
    #if [ -d "${D}" ]; then
        echo "${D}"   # your processing here
        tar -cf "${D}".tar "${D}" && gzip -f "${D}".tar
        VERSION=`./get-ver "${D}"/package.scm`
        #echo $VERSION
        mv "${D}".tar.gz ${REPODIR}/"${D}"-"${VERSION}".tar.gz
        echo "( ${D} ${VERSION} ${D}-${VERSION}.tar.gz )" >> ${INDEX}
    fi
done
