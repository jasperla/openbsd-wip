# $OpenBSD$

COMMENT =		lzip compression library

V =			1.4
DISTNAME =		lzlib-${V}

SHARED_LIBS +=		lz	0.0

CATEGORIES =		archivers

HOMEPAGE =		http://lzip.nongnu.org/lzlib.html

# GPLv3+ with special exception
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_ENV +=	LIBlz_VERSION=${LIBlz_VERSION}

.include <bsd.port.mk>
