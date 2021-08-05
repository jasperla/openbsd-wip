# $OpenBSD$

COMMENT =	open source implementation of the Tailscale control server

MODGO_MODNAME =	github.com/juanfont/headscale
MODGO_VERSION =	v0.5.0

DISTNAME =	headscale-${MODGO_VERSION}

CATEGORIES =	net

# BSD-3
PERMIT_PACKAGE =	Yes

MODULES =		lang/go

.include "./modules.inc"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/headscale
	${INSTALL_DATA} ${FILESDIR}/derp.yaml ${PREFIX}/share/examples/headscale/
	${SUBST_DATA} ${FILESDIR}/config.json.postgres.example \
		${PREFIX}/share/examples/headscale/config.json.postgres.example
	${SUBST_DATA} ${FILESDIR}/config.json.sqlite.example \
		${PREFIX}/share/examples/headscale/config.json.sqlite.example

.include <bsd.port.mk>
