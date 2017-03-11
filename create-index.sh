#!/bin/bash

REPODIR=_packages
INDEX=${REPODIR}/index.dat
mkdir -p $REPODIR
rm -f ${INDEX}
rm -f ${REPODIR}/*.gz
touch ${INDEX}

for D in *; do
    if [ -d "${D}" ] && [ "${D}" != "${REPODIR}" ]; then
        VERSION=`./query-pkg "${D}"/package.scm ver`
        INFO=`./query-pkg "${D}"/package.scm`
        tar -cf "${D}".tar "${D}" && gzip -f "${D}".tar
        mv "${D}".tar.gz ${REPODIR}/"${D}"-"${VERSION}".tar.gz
        echo "( ${D} ${VERSION} ${D}-${VERSION}.tar.gz ${INFO} )" >> ${INDEX}
    fi
done
