#!/bin/sh

if [ -z "$XASH3D_BASEDIR" ]; then
	export XASH3D_BASEDIR=${PREFIX}/share/xash3d/
fi

XASH_BIN_PATH=${PREFIX}/lib/xash3d
HL_CLIENT_LIB=${PREFIX}/lib/xash3d/valve/libclient.so
HL_SERVER_LIB=${PREFIX}/lib/xash3d/valve/libserver.so

LD_LIBRARY_PATH=${XASH_BIN_PATH}:$LD_LIBRARY_PATH ${XASH_BIN_PATH}/xash3d \
	-clientlib ${HL_CLIENT_LIB} -dll ${HL_SERVER_LIB} -console $@
