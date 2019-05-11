# $OpenBSD: Makefile,v 1.7 2019/01/23 00:54:07 abieber Exp $

COMMENT =	a go module datastore and proxy

V =		0.4.0
DISTNAME =	athens-${V}

CATEGORIES =	sysutils

HOMEPAGE =	https://docs.gomods.io

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pthread

MASTER_SITES =	https://deftly.net/dist/

MODULES =	lang/go
MODGO_TYPE =	bin
MODGO_LDFLAGS =	-X "github.com/gomods/athens/pkg/build.version=${V}" \
		-X "github.com/gomods/athens/pkg/build.buildDate=unknown"

NO_TEST =	Yes

ALL_TARGET =	github.com/gomods/athens

do-build:
	cd ${WRKSRC}/cmd/proxy && ${MODGO_BUILD_CMD}

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/proxy \
		${PREFIX}/bin/athens

.include <bsd.port.mk>
