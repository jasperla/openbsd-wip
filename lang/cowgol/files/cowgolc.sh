#!/bin/ksh

if [ $# -eq 0 ] || ! [ -f "$1" ] || [ "x${1##*\.}" != "xcow" ] ; then
  echo "usage: cowgolc file.cow [arguments]"
  exit 1
fi

FILENAME=`/usr/bin/basename "$1" .cow`
shift

${TRUEPREFIX}/bin/cowfe-cgen.nncgen.exe -I${LOCALBASE}/share/cowgol/rt/ -I${LOCALBASE}/share/cowgol/rt/cgen/ ${FILENAME}.cow ${FILENAME}.cob && \
${TRUEPREFIX}/bin/cowbe-cgen.nncgen.exe ${FILENAME}.cob ${FILENAME}.coo && \
${TRUEPREFIX}/bin/cowlink-cgen.nncgen.exe -o ${FILENAME}.c ${LOCALBASE}/share/cowgol/rt/cgen/cowgol.coo ${FILENAME}.coo && \
/usr/bin/cc -O2 -pipe -I${LOCALBASE}/share/cowgol/rt/cgen -o ${FILENAME} ${FILENAME}.c "$@"

rm -f ${FILENAME}.cob ${FILENAME}.coo ${FILENAME}.c
