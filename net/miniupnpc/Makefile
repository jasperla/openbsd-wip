# $OpenBSD$

COMMENT =		UPnP client

V =			1.5
DISTNAME =		miniupnpc-${V}

SHARED_LIBS =		miniupnpc 0.0

CATEGORIES =		net

HOMEPAGE =		http://miniupnp.free.fr/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB-main =		c

MASTER_SITES =		${HOMEPAGE}/files/

USE_GMAKE =		Yes

NO_REGRESS =		Yes

pre-build:
	${SUBST_CMD} ${WRKSRC}/Makefile

post-install:
	${INSTALL_MAN} ${WRKSRC}/man3/miniupnpc.3 ${PREFIX}/man/man3

.include <bsd.port.mk>
