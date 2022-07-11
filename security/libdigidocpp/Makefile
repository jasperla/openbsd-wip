COMMENT =		library for creating DigiDoc signature files

V =			3.14.8
GH_ACCOUNT =		open-eid
GH_PROJECT =		libdigidocpp
GH_COMMIT =		d9fd05330c80b846e1ee14686b05a19bf0acce52
DISTNAME =		libdigidocpp-${V}pl20220607
DISTFILES =		${GH_DISTFILE}
CATEGORIES =		security

SHARED_LIBS =		digidocpp	0.0	# 0.0

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# LGPL 2.1+
PERMIT_PACKAGE =	Yes

HOMEPAGE =		https://www.id.ee/

MASTER_SITES0 =		https://github.com/open-eid/libdigidocpp/
PATCHFILES +=		libdigidocpp-iconv-{pull/}470.patch:0
PATCHFILES +=		libdigidocpp-pkcs11-path-{pull/}473.patch:0
PATCHFILES +=		libdigidocpp-libressl-{pull/}482.patch:0
PATCHFILES +=		libdigidocpp-openssl-errors-{pull/}481.patch:0

PATCH_DIST_STRIP =	-p1

MASTER_SITES1 =		https://github.com/open-eid/cmake/
CMAKE_COMMIT =		eececc017b2d40e025018727afb9d925482e1a14
DISTFILES +=		open-eid-cmake-{archive/}${CMAKE_COMMIT}${EXTRACT_SUFX}:1

# ${WRKSRC}/etc/schema/.../*.xsd.orig
PATCHORIG =		.pat.orig

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# C++17
COMPILER =		base-clang ports-gcc

WANTLIB +=		${COMPILER_LIBCXX} c crypto iconv m minizip ssl xalan-c
WANTLIB +=		xerces-c xml-security-c z

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/boost \
			devel/xsd>=4.0 \
			editors/vim,-main

LIB_DEPENDS =		archivers/minizip \
			converters/libiconv \
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

# minizip's minizip-config.cmake:30 fails since zstd does not ship .cmake files
# but minizip is still found through a later pkg_check_modules()
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_MiniZip=ON

CONFIGURE_ENV +=	LDFLAGS=${LDFLAGS:Q}

# dlopen()'ed "opensc-pkcs11.so" in libdigidocpp.so
LIB_DEPENDS +=		security/opensc
# alternative to https://github.com/open-eid/cmake/pull/35
CONFIGURE_ARGS +=	-DCMAKE_SHARED_LINKER_FLAGS="${LDFLAGS} \
			    -Wl,-rpath,/usr/local/lib/pkcs11"

post-extract:
	# hook up prefetched submodule
	rmdir ${WRKSRC}/cmake/
	ln -s ${WRKDIR}/cmake-${CMAKE_COMMIT} ${WRKSRC}/cmake

.include <bsd.port.mk>
