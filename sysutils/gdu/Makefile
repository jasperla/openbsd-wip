COMMENT =	disk usage analyzer with console interface written in Go

MODGO_MODNAME =	github.com/dundee/gdu/v5
MODGO_VERSION =	v5.15.0

DISTNAME =	gdu-${MODGO_VERSION}

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/dundee/gdu

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread

MODULES =	lang/go
MODGO_TYPE =	bin

_BUILD_DATE =	$$(date +%Y-%m-%d)
_BUILD_USER =	$$(id -u -n)

MODGO_LDFLAGS +=	-X ${MODGO_MODNAME}/build.Version=${MODGO_VERSION}
MODGO_LDFLAGS +=	-X $(MODGO_MODNAME)/build.Time=${_BUILD_DATE}
MODGO_LDFLAGS +=	-X $(MODGO_MODNAME)/build.User=${_BUILD_USER}

.include "modules.inc"

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/gdu ${PREFIX}/bin
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/gdu.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
