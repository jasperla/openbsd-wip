# $OpenBSD$

COMMENT =		MessagePack implementation for C and C++

V = 			2.0.0
DISTNAME =		msgpack-${V}
SHARED_LIBS +=	msgpackc                  0.0 # 2.0

CATEGORIES =		devel

HOMEPAGE =		http://msgpack.org/

# Boost license
PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT =		msgpack
GH_PROJECT =		msgpack-c
GH_TAGNAME =		cpp-${V}

MODULES =		devel/cmake
BUILD_DEPENDS +=	devel/doxygen

# Requires updated gtest, which breaks protobuf < 3
CONFIGURE_ARGS +=	-DMSGPACK_BUILD_TESTS=Off
NO_TEST =		Yes

post-build:
	cd ${WRKSRC} && ${LOCALBASE}/bin/doxygen

DOC_DIR = ${PREFIX}/share/doc/msgpack
post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	cp -r ${WRKSRC}/doc/html/* ${DOC_DIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${DOC_DIR}

.include <bsd.port.mk>
