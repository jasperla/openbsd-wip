# $OpenBSD: Makefile,v 1.2 2017/10/28 13:38:38 abieber Exp $

COMMENT =	a backup program that is fast, efficient and secure.

GH_ACCOUNT =	restic
GH_PROJECT =	restic
GH_TAGNAME =	v0.7.3

CATEGORIES =	sysutils

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pthread

MODULES =	lang/go
MODGO_TYPE =	bin

do-build:
	cd ${WRKSRC} && go run -x build.go

do-install:
	cp ${WRKSRC}/restic ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/man/*.1 ${PREFIX}/man/man1;

.include <bsd.port.mk>
