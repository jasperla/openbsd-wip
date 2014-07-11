# $OpenBSD: Makefile.template,v 1.60 2010/10/24 20:41:23 ajacoutot Exp $

COMMENT =		historical real-time strategy game data

DISTNAME =		0ad-${V}-alpha-unix-data
PKGNAME =		0ad-data-${V}

PKG_ARCH =		*

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/0ad
	cp -R ${WRKDIST}/binaries/data/* ${PREFIX}/share/0ad

.include <bsd.port.mk>
