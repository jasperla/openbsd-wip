# $OpenBSD: Makefile.template,v 1.67 2013/07/10 15:22:23 bcallah Exp $

COMMENT =		Amiga DMS unpacker
DISTNAME =		xdms-1.3.2
EXTRACT_SUFX =		.tar.bz2
CATEGORIES =		archivers emulators

HOMEPAGE =		http://zakalwe.fi/~shd/foss/xdms/

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# public domain
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

MASTER_SITES =		http://zakalwe.fi/~shd/foss/xdms/

USE_GMAKE =		Yes
CONFIGURE_STYLE =	simple
CONFIGURE_ENV +=	prefix=${PREFIX} DESTDIR=${DESTDIR}
MAKE_FLAGS +=		INSTALL=${INSTALL}
ALL_TARGET =		xdms

NO_TEST =		Yes

.include <bsd.port.mk>
