# $OpenBSD$

COMMENT =	remake of Xixit
DISTNAME =	blockrage-0.2.3
CATEGORIES =	games x11

HOMEPAGE =	http://blockrage.sourceforge.net/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL c m pthread

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=blockrage/}

LIB_DEPENDS =	devel/sdl

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--sysconfdir=${SYSCONFDIR}

ALL_TARGET =	blockrage

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/blockrage ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/blockrage/test
	${INSTALL_DATA} ${WRKSRC}/data/test/* ${PREFIX}/share/blockrage/test
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/blockrage
	${INSTALL_DATA} ${WRKSRC}/blockrage{.cfg,-fhs.rc} ${PREFIX}/share/examples/blockrage
	${INSTALL_MAN} ${WRKSRC}/blockrage.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
