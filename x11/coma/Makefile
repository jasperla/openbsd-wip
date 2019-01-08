# $OpenBSD: Makefile.template,v 1.78 2018/07/09 15:00:06 jca Exp $

COMMENT =	minimalistic X11 window manager

GH_ACCOUNT =	jorisvink
GH_PROJECT =	coma
GH_COMMIT =	5444e3081b8c0e199b88084ba7475176a73e9e25

DISTNAME =	coma-20190108

CATEGORIES =	x11

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xft c

USE_GMAKE =	Yes

NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/coma ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/coma
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/coma

.include <bsd.port.mk>
