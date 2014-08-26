# $OpenBSD: Makefile,v 1.3 2014/01/17 19:46:21 juanfra Exp $

COMMENT =		lzip compression library

DISTNAME =		lzlib-1.6-rc2

SHARED_LIBS +=		lz	1.0 # 1.5

HOMEPAGE =		http://lzip.nongnu.org/lzlib.html

# GPLv2+ with link exception
PERMIT_PACKAGE_CDROM =	Yes

MAKE_ENV +=		LIBlz_VERSION=${LIBlz_VERSION}

USE_GMAKE =		Yes

CONFIGURE_ARGS +=	${CONFIGURE_SHARED}

# The Makefile tries to strip a shared lib with the install-strip target.
INSTALL_TARGET =	install

.include <bsd.port.mk>
