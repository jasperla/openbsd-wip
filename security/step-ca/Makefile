COMMENT =	private certificate authority and ACME server

V =		0.19.0
MODGO_VERSION =	v${V}

DISTNAME =	certificates-${V}
PKGNAME =	step-ca-${V}

CATEGORIES =	security

MASTER_SITES =	https://deftly.net/dist/

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += c pcsclite pthread

LIB_DEPENDS =		security/pcsc-lite

MODULES =		lang/go

MODGO_LDFLAGS +=	-X "main.Version=${V}"

do-build:
	cd ${WRKSRC} && \
		${MODGO_BUILD_CMD:S/GO111MODULE=off/GO111MODULE=on/} ./cmd/...

.include <bsd.port.mk>
