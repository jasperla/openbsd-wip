# $OpenBSD: Makefile,v 1.2 2017/10/28 13:38:38 abieber Exp $

COMMENT =	a REST backend for the restic backup tool

GH_ACCOUNT =	restic
GH_PROJECT =	rest-server
GH_TAGNAME =	v0.9.6

CATEGORIES =	sysutils

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pthread

MODULES =	lang/go
MODGO_TYPE =	bin

NO_TEST =	Yes

do-build:
	cd ${WRKSRC} && ${MODGO_CMD} run -x build.go

do-install:
	cp ${WRKSRC}/rest-server ${PREFIX}/bin/

.include <bsd.port.mk>
