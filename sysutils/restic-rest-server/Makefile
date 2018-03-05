# $OpenBSD: Makefile,v 1.2 2017/10/28 13:38:38 abieber Exp $

COMMENT =	a REST backend for the restic backup tool

V =		0.9.7
DISTNAME =	rest-server-${V}
PKGNAME =	restic-rest-server-${V}

CATEGORIES =	sysutils

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pthread

MASTER_SITES =	https://github.com/restic/rest-server/releases/download/v${V}/

MODULES =	lang/go
MODGO_TYPE =	bin

NO_TEST =	Yes

SUBST_VARS +=	VARBASE

do-build:
	cd ${WRKSRC} && ${MODGO_CMD} run -x build.go

do-install:
	cp ${WRKSRC}/rest-server ${PREFIX}/bin/

.include <bsd.port.mk>
