# $OpenBSD: Makefile.template,v 1.80 2019/04/01 07:35:45 bentley Exp $
COMMENT =	Warsow game data

DISTNAME =	warsow-2.1.2
PKGNAME =	warsow-data-2.1

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
	mkdir ${PREFIX}/share/warsow
	cp -R ${WRKDIST}/basewsw ${PREFIX}/share/warsow/
	rm ${PREFIX}/share/warsow/basewsw/modules_21.pk3

.include <bsd.port.mk>
