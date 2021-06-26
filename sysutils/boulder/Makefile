# $OpenBSD: Makefile,v 1.16 2020/11/19 23:22:22 abieber Exp $

COMMENT =	an ACME-based certificate authority

V =		2021-01-25
GH_ACCOUNT =	letsencrypt
GH_PROJECT =	boulder
GH_TAGNAME =	release-${V}

PKGNAME =	boulder-${V:S/-/./g}
CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/letsencrypt/boulder

# MPL-2.0
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =	lang/go

do-build:
	cd ${WRKSRC} && \
			${MODGO_BUILD_CMD} ${ALL_TARGET}/cmd/... ;

.include <bsd.port.mk>
