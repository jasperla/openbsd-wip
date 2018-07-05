# $OpenBSD: Makefile,v$

COMMENT =	fast and secure VPN

V =		0.0.20180625
DISTNAME =	WireGuard-$V
PKGNAME =	wireguard-tools-$V
REVISION =	1

CATEGORIES =	security

HOMEPAGE =	https://www.wireguard.com/

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MASTER_SITES =		https://git.zx2c4.com/WireGuard/snapshot/

EXTRACT_SUFX =		.tar.xz

RUN_DEPENDS =		shells/bash

MAKE_FLAGS =		WITH_WGQUICK=yes
FAKE_FLAGS =		MANDIR=${PREFIX}/man \
			PREFIX=${PREFIX}
USE_GMAKE =		Yes

NO_TEST =		Yes

WRKSRC =		${WRKDIST}/src/tools

ALL_TARGET =		wg

post-extract:
	cp ${FILESDIR}/openbsd.bash ${WRKSRC}/wg-quick/

.include <bsd.port.mk>
