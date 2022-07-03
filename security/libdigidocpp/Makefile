COMMENT =		library for creating DigiDoc signature files

V =			3.14.8
DISTNAME =		libdigidocpp-${V}
CATEGORIES =		security

SHARED_LIBS =		digidocpp	0.0	# 0.0

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# LGPL 2.1+
PERMIT_PACKAGE =	Yes

HOMEPAGE =		https://www.id.ee/
MASTER_SITES =		https://github.com/open-eid/libdigidocpp/releases/download/v${V}/

MASTER_SITES0 =		https://github.com/open-eid/libdigidocpp/
# committed "Upgrade openssl 1.1.1m and fix crash with new openssl version (#453)"
OSSL_FIX_ID =		42a8cfd
PATCHFILES +=		libdigidocpp-fix-openssl-{commit/}${OSSL_FIX_ID}.patch:0
# exclude irrelevant/failing hunks
PATCH_CASES +=		*-${OSSL_FIX_ID}.patch) \
				filterdiff -x \*.yml -x \*.sh -- $$patchfile | \
				    ${PATCH} ${PATCH_DIST_ARGS} ;;

PATCH_DIST_STRIP =	-p1

# ${WRKSRC}/etc/schema/.../*.xsd.orig
PATCHORIG =		.pat.orig

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# C++11
COMPILER =		base-clang ports-gcc

WANTLIB +=		${COMPILER_LIBCXX} c iconv m minizip xalan-c
WANTLIB +=		xerces-c xml-security-c z

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/xsd>=4.0 \
			editors/vim,-main

# for filterdiff(1) in PATCH_CASES, remove on next update
BUILD_DEPENDS +=	textproc/patchutils

LIB_DEPENDS =		archivers/minizip \
			converters/libiconv \
			security/xml-security-c \
			textproc/xalan-c \
			textproc/xerces-c

RUN_DEPENDS =		# empty

TEST_DEPENDS =		devel/boost
BUILD_DEPENDS +=	${TEST_DEPENDS}


# move DIGIDOCPP_CONFIG_DIR out of /usr/local/ into /etc/ (PLIST @sample)
CONFIGURE_ARGS =	-DCMAKE_INSTALL_SYSCONFDIR=share/examples

# skip documentation and heavy dependency (for now)
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON

# no idea if/where JNI is packaged, just disable uneeded Java parts (for now)
#LIB_DEPENDS +=		devel/swig
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_JNI=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_SWIG=ON

# uses deprecated PoDoFo API and implies OpenSSL 1.0.2
# https://github.com/open-eid/libdigidocpp/issues/450
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_PoDoFo=ON

# minizip's minizip-config.cmake:30 fails since zstd does not ship .cmake files
# but minizip is still found through a later pkg_check_modules()
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_MiniZip=ON

# force ports OpenSSL until new upstream version supports LibreSSL
BUILD_DEPENDS +=	security/openssl/1.1>=1.1.1m,<3
CXXFLAGS +=		-I/usr/local/include/eopenssl11
# link statically since other dependencies may link against LibreSSL
LDFLAGS +=		/usr/local/lib/eopenssl11/libcrypto.a \
			/usr/local/lib/eopenssl11/libssl.a
CONFIGURE_ENV +=	LDFLAGS=${LDFLAGS:Q}

# dlopen()'ed "opensc-pkcs11.so" in libdigidocpp.so
LIB_DEPEPNDS +=		security/opensc
CONFIGURE_ARGS +=	-DCMAKE_SHARED_LINKER_FLAGS="${LDFLAGS} \
			    -Wl,-rpath,/usr/local/lib/pkcs11"


.include <bsd.port.mk>
