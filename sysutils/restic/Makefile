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
	cd ${WRKSRC} && ${MODGO_CMD} run -x build.go

# Currently tests fail:
# node_test.go:212: file: mode doesn't match (04000755 != 0600)
do-test:
	cd ${WRKSRC} && ${MODGO_CMD} test ./cmd/... ./internal/...

do-install:
	cp ${WRKSRC}/restic ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/man/*.1 ${PREFIX}/man/man1;

.include <bsd.port.mk>
