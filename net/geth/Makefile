# $OpenBSD: Makefile.template,v 1.76 2017/02/25 16:04:20 danj Exp $

COMMENT =	go implementation of the ethereum protocol
GH_ACCOUNT =	ethereum
GH_PROJECT =	go-ethereum
GH_TAGNAME =	v1.6.5

CATEGORIES =	net

HOMEPAGE =	https://geth.ethereum.org/

WANTLIB += c pthread

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =	lang/go
MODGO_TYPE =	bin

do-build:
	cd ${WRKSRC} && make geth

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/build/bin/geth ${PREFIX}/bin/

.include <bsd.port.mk>
