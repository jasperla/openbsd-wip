COMMENT =	disk usage analyzer with console interface

MODGO_MODNAME =	github.com/dundee/gdu/v5
MODGO_VERSION =	v5.27.0

DISTNAME =	gdu-${MODGO_VERSION}

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/dundee/gdu

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread

MODULES =	lang/go

MODGO_LDFLAGS +=	-X ${MODGO_MODNAME}/build.Version=${MODGO_VERSION:S/v//}

# To apply patch
WRKDIST =	${WRKSRC}

# rename gdu => godu (conflicts with sysutils/coreutils)
do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/gdu ${PREFIX}/bin/godu
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/gdu.1 ${PREFIX}/man/man1/godu.1

.include "modules.inc"

.include <bsd.port.mk>
