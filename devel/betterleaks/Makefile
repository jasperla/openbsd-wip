COMMENT =	tool to detect secrets

MODGO_MODNAME =	github.com/betterleaks/betterleaks
MODGO_VERSION =	v1.1.1

DISTNAME =	betterleaks-${MODGO_VERSION}

CATEGORIES =	devel

# https://github.com/betterleaks/betterleaks
HOMEPAGE =	https://betterleaks.com/

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread

MODULES =	lang/go

MODGO_LDFLAGS +=	-X ${MODGO_MODNAME}/version.Version=${MODGO_VERSION:S/v//}

TEST_TARGET =	./...

post-install:
	 ${INSTALL_DATA_DIR} ${PREFIX}/share/examples/betterleaks
	 ${INSTALL_DATA} ${WRKSRC}/config/betterleaks.toml \
		 ${PREFIX}/share/examples/betterleaks/

.include "modules.inc"

.include <bsd.port.mk>
