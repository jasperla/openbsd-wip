# $OpenBSD: Makefile,v 1.12 2017/07/26 22:45:18 sthen Exp $

COMMENT =		c protocol buffers

V =			1.3.0
DISTNAME =		protobuf-c-$V

SHARED_LIBS =		protobuf-c 2.0	# 2.0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/protobuf-c/protobuf-c/wiki

MASTER_SITES=		https://github.com/protobuf-c/protobuf-c/releases/download/v$V/

MAINTAINER =		Jonathon Sisson <sisson.j@gmail.com>

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m protobuf protoc pthread ${COMPILER_LIBCXX} z

BUILD_DEPENDS =		devel/libtool \
			${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

LIB_DEPENDS =		devel/protobuf

AUTOCONF_VERSION =	2.67
AUTOMAKE_VERSION =	1.11

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE =		Yes

SEPARATE_BUILD =	Yes

pre-configure:
	cd ${WRKSRC} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} autoreconf -f -i

.include <bsd.port.mk>
