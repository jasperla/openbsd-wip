# $OpenBSD: Makefile.template,v 1.80 2019/04/01 07:35:45 bentley Exp $
COMMENT =	Warsow game data

V =		2.1.2
DISTNAME =	warsow-${V}
PKGNAME =	warsow-data-${V}

CATEGORIES =	games

HOMEPAGE =	https://warsow.net/

MAINTAINER =	Leonid Bobrov <mazocomp@disroot.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://sebastian.network/warsow/ \
		http://slice.sh/warsow/

NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/warsow
	${INSTALL_DATA_DIR} ${PREFIX}/share/warsow/basewsw
	/bin/cp -R ${WRKDIST}/basewsw ${PREFIX}/share/warsow/

.include <bsd.port.mk>
