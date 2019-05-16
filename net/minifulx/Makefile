# $OpenBSD: Makefile,v 1.7 2019/01/23 00:54:07 abieber Exp $

COMMENT =	minimalist and opinionated feed reader

DISTNAME =	miniflux-2.0.15

CATEGORIES =	net

HOMEPAGE =	https://miniflux.app/

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pthread

MASTER_SITES =	https://deftly.net/dist/

MODULES =	lang/go
MODGO_TYPE =	bin

NO_TEST =	Yes

ALL_TARGET =	miniflux.app

SUBST_VARS =	VARBASE

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/miniflux.app \
		${PREFIX}/bin/miniflux
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/*.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/miniflux
	${INSTALL_DATA} ${FILESDIR}/miniflux.conf ${PREFIX}/share/examples/miniflux

.include <bsd.port.mk>
