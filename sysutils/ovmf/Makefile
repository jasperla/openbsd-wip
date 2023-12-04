# ld: error: relocation R_X86_64_64 cannot be used against local symbol; recompile with -fPIC

# I don't have arm64
ONLY_FOR_ARCHS =	amd64
# should run on any arch in qemu-system-x86_x64
PKG_ARCHS =		*

COMMENT =		Open Virtual Machine Firmware
# 202311 neds OpenSSL *and* EmbedTLS
V =			202308
DIST_TUPLE =		github	tianocore	edk2	edk2-stable${V}	.
PKGNAME =		ovmf-${V}
CATEGORIES =		sysutils

DIST_TUPLE +=		github	MIPI-Alliance	public-mipi-sys-t	v1.1+edk2	. # post-extract
# XXX later OpenSSL dropped openssl/e_os.h
DIST_TUPLE +=		github	openssl	openssl	openssl-3.0.12	CryptoPkg/Library/OpensslLib/openssl

HOMEPAGE =		https://www.tianocore.org/ovmf/

# BSD
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# -std=c++14
COMPILER =		base-clang ports-gcc

MODULES =		lang/python
MODPY_RUNDEP =		No

BUILD_DEPENDS =		devel/acpica \
			devel/nasm

USE_GMAKE =		Yes
MAKE_FILE =		GNUmakefile # 'Makefile' are for Windows

MAKE_ENV =		HOST_ARCH=X64 \
			PYTHON3_ENABLE=TRUE \
			PYTHON_COMMAND=${MODPY_BIN}

BUILD_FLAGS =		--verbose \
			-n ${MAKE_JOBS} \
			--arch=X64 \
			--buildtarget=RELEASE \
			--tagname=GCC5

post-extract:
	# XXX '+' vs. '-' in tag vs. directory name
	rmdir ${WRKSRC}/MdePkg/Library/MipiSysTLib/mipisyst/ && \
		mv ${WRKDIR}/public-* ${WRKSRC}/MdePkg/Library/MipiSysTLib/mipisyst

pre-patch:
	# fix hardcoded compiler names, drop -Werror
	sed -i \
	    -e 's/gcc-ar/${AR}/' \
	    -e 's/gcc/${CC}/' \
	    -e 's/-Werror //' \
	    ${WRKSRC}/BaseTools/Conf/tools_def.template
	# Drop unsupported compiler flags to unbreak build
	sed -i -E \
	    -e 's/-W(no-)?(error=)?maybe-uninitialized//' \
	    -e 's/-maccumulate-outgoing-args//' \
	    ${WRKSRC}/BaseTools/Conf/tools_def.template \
	    ${WRKSRC}/CryptoPkg/Library/OpensslLib/*.inf
	# .py scripts execute 'make'
	ln -sf /usr/local/bin/${MAKE_PROGRAM} ${WRKDIR}/bin/make

do-configure:
	# build tools in configure to isolate from WIP do-build
	${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
	    -f ${MAKE_FILE} -C ${WRKSRC}/BaseTools/ ${ALL_TARGET}

do-build:
	cd ${WRKSRC}/OvmfPkg/ && \
		${SETENV} ${MAKE_ENV} ./build.sh ${BUILD_FLAGS}

.include <bsd.port.mk>
