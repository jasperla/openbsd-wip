# $OpenBSD: Makefile.template,v 1.78 2018/07/09 15:00:06 jca Exp $

COMMENT =	keyboard driven tiling window manager

GH_ACCOUNT =	jorisvink
GH_PROJECT =	coma
GH_COMMIT =	f569e824e92fd1a439b81c3ab0be86514abeeea0

DISTNAME =	coma-20190115

CATEGORIES =	x11

HOMEPAGE =	https://coma.one/wm/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	X11 Xft c

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/coma ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/coma.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
