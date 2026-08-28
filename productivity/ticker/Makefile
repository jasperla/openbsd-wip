
COMMENT =	track stock, crypto and derivatives prices and holdings

MODGO_MODNAME =	github.com/achannarasappa/ticker/v5
MODGO_VERSION = v5.3.0

DISTNAME =	ticker-${MODGO_VERSION}
PKGNAME =	ticker-5.3.0

CATEGORIES =	productivity

# GPL v2
PERMIT_PACKAGE =	yes

MODULES =		lang/go
WRKDIST =		${WRKSRC}

WANTLIB +=		c pthread

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ticker
	@${SUBST_DATA} ${FILESDIR}/ticker.yaml \
	${PREFIX}/share/examples/ticker/ticker.yaml.sample

.include "modules.inc"

.include <bsd.port.mk>
