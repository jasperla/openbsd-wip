COMMENT =		library for creating DigiDoc signature files

V =			3.14.10
GH_ACCOUNT =		open-eid
GH_PROJECT =		libdigidocpp
GH_COMMIT =		3d40b5d10411587b1bbc4d084429a8a7105e298d
DISTNAME =		libdigidocpp-${V}pl20220726
DISTFILES =		${GH_DISTFILE}
CATEGORIES =		security

SHARED_LIBS =		digidocpp	0.0	# 0.0

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# LGPL 2.1+
PERMIT_PACKAGE =	Yes

HOMEPAGE =		https://www.id.ee/

DIST_SUBDIR =		libdigidocpp
MASTER_SITES0 =		https://github.com/open-eid/libdigidocpp/
PATCHFILES +=		iconv-{pull/}470.patch:0
# 481.patch is partially merged already and pull/N/commits/ID.patch needs
# full-length commit id
OSSL_ERRS_COMMIT =	f8c1d017b947947b8156bc222a2fa7c80d0ac9cd
PATCHFILES +=		openssl-errors-{pull/481/commits/}${OSSL_ERRS_COMMIT}.patch:0

PATCH_DIST_STRIP =	-p1

MASTER_SITES1 =		https://github.com/open-eid/cmake/
CMAKE_COMMIT =		587667bbd3c911a08e8d96b784a4aa3c5c91ccba
DISTFILES +=		cmake-{archive/}${CMAKE_COMMIT}${EXTRACT_SUFX}:1

# ${WRKSRC}/etc/schema/.../*.xsd.orig
PATCHORIG =		.pat.orig

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# C++17
COMPILER =		base-clang ports-gcc

WANTLIB +=		${COMPILER_LIBCXX} c crypto iconv m ssl xalan-c
WANTLIB +=		xerces-c xml-security-c z

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/boost \
			devel/xsd>=4.0 \
			editors/vim,-main

LIB_DEPENDS =		converters/libiconv \
			security/xml-security-c \
			textproc/xalan-c \
			textproc/xerces-c

RUN_DEPENDS =		# empty

# move DIGIDOCPP_CONFIG_DIR out of /usr/local/ into /etc/ (PLIST @sample)
CONFIGURE_ARGS =	-DCMAKE_INSTALL_SYSCONFDIR=share/examples

# skip documentation and heavy dependency (for now)
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON

# no idea if/where JNI is packaged, just disable uneeded Java parts (for now)
#LIB_DEPENDS +=		devel/swig
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_JNI=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_SWIG=ON

# disable unneeded Python bindings (for now)
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Python3=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_PythonLibs=ON

# uses deprecated PoDoFo API and implies OpenSSL 1.0.2
# https://github.com/open-eid/libdigidocpp/issues/450
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_PoDoFo=ON

CONFIGURE_ENV +=	LDFLAGS=${LDFLAGS:Q}

# dlopen()'ed "opensc-pkcs11.so" in libdigidocpp.so
LIB_DEPENDS +=		security/opensc
# alternative to https://github.com/open-eid/cmake/pull/35
CONFIGURE_ARGS +=	-DCMAKE_SHARED_LINKER_FLAGS="${LDFLAGS} \
			    -Wl,-rpath,/usr/local/lib/pkcs11"

# fix src/minizip/ioapi.c warnings: off_t is always 64 bit,
# no need for ftello64()
# see upstream "Avoid f*64() on BSDs" https://github.com/madler/zlib/pull/678
CFLAGS +=		-DIOAPI_NO_64

post-extract:
	# hook up prefetched submodule
	rmdir ${WRKSRC}/cmake/
	ln -s ${WRKDIR}/cmake-${CMAKE_COMMIT} ${WRKSRC}/cmake

.include <bsd.port.mk>
