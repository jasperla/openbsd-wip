# $OpenBSD: Makefile,v 1.17 2017/06/17 07:26:50 feinerer Exp $

COMMENT =	personal storage system for life

# date taken from https://perkeep.org/download
DISTNAME =	perkeep-2017-05-05

GH_ACCOUNT =	perkeep
GH_PROJECT =	perkeep
GH_COMMIT =	8f1a7df176de21d0d052c04db45b373c5c282fb1

CATEGORIES =	net

HOMEPAGE =	https://perkeep.org/

# Apache 2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pthread

WRKSRC =	${WRKDIR}/src/perkeep.org

# Y U NO WORK!?
MODGO_PATH =	${WRKSRC}:${MODGO_PACKAGE_PATH}

MODULES =	lang/go
MODGO_TYPE =	bin

do-build:
	# GOPATH should contain WRKSRC for things to work..
	# I don't know how to append to it!
	cd ${WRKSRC} && ${MODGO_CMD} run make.go

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/camlistored ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKSRC}/bin/camtool ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKSRC}/bin/camput ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKSRC}/bin/devcam ${PREFIX}/bin/

.include <bsd.port.mk>
